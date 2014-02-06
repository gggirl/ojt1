console.log('XmppClient partial loaded');
		var hostname                = 'localhost';
		var domain                  = 'siddharth-ravichandrans-macbook-pro.local';
		var bare_jid                =  ''; 
		var password                = ''; 
		var chatroom_domain         = 'conference.' + domain;
	//	var username                = bare_jid + '@' + domain;

		console.log('xmpp client connect request posted');

		function loginSuccess(){
			alert('Login Successful');
		//	xmpp_client.set_presence('available');
			alert(typeof ROOM_NICK);
		   if(typeof ROOM_NICK != 'undefined'){
				 xmpp_client.join_room(ROOM_NICK, chatroom_domain, bare_jid, 
                                 'available', null);		 
				 console.log('JOIN ROOM Called');
			}	
		}

		function loginFailure(){
			console.log('Login Failed');
		}

		function serverConnectSuccess(){
			alert('Server Connection Success');
			$('.presence-status').html('('+ 'Server Connected'+')');
			xmpp_client.login(bare_jid, password, loginSuccess, loginFailure);

		}

		function serverConnectFailure(){
			alert('Server Connection Failed');
		}

		var xmpp_client                            = new XMPPClient;
		xmpp_client.connect('localhost', 5222);

		xmpp_client.onSocketConnect                = function(){
			$('.presence-status').html('('+ 'On Socket Connected'+')');
			xmpp_client.connectServer(domain, serverConnectSuccess, 
                        serverConnectFailure);
			console.log('After COnnect Server is called');	
			xmpp_client.login(bare_jid, password, loginSuccess, loginFailure);	

		}

		xmpp_client.onPresence = function(ntype, from) {
			var username  = bare_jid + '@' + domain + '/Orbited'; 
			if(from == username){
				if (ntype == null){
					$('.presence-status').html('(available)');
				}
				else{
					$('.presence-status').html('(' + ntype + ')');
				}
			}				
		}

		xmpp_client.onMessage = function(jid, username, text) {
		$('.conversation-box').append('');

‘ + username.split(“/”)[1] + ‘ says : ‘ + text + ‘

			alert('JID' +  jid.to_s + ' Username ' + username + ' Text' + text);
		}

	$(document).ready(function(){
		$('.send-message-button').click(function(){

			alert('Incoming message');
			var message                               = $('#message').val();			
		//	xmpp_client.msg('007@conference.' + domain, message);
			xmpp_client.groupchat_msg(message, chatroom_domain);
			return false;
		});
	});