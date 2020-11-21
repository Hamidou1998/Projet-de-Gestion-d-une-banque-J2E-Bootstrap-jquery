$(document)
		.ready(
				function() {

					var CodeAccount ="c2";
					
					//alert("je suis dans custom");
					$("#form_modifier").hide();
					$("#PanelTableOperation").hide();
				
					
	/*********************************************************************************************************************************/	
					$("#enregistrer")
					.click(
							function() {

								alert("je suis dans enregistrer");

								$.ajax({
											url : 'Liste/ListerOper.jsp',
											type : 'GET', 

											data : 'code='+CodeAccount,
													

											dataType : 'html',
											success : function(
													code_html) {

													$("#MyBodyOp").html(code_html);
													$("#PanelTableOperation").show();
												
											},	
											error : function(
													resultat,
													statut,
													erreur) {

												swal(
														"failure registration",
														resultat,
														"error");
											}
										});

							});		
					
					
					
/*********************************************************************************************************************************/
					
					$("#ok")
					.click(
							function() {

								alert("je suis dans chercher");

								$.ajax({
											url : 'Recherche/recherchercompte.jsp',
											type : 'GET', 

											data : 'code='+$("#code_compte").val(),
													

											dataType : 'html',
											success : function(
													code_html) {
//
											//alert("je suis success "+code_html);
//												console
//														.log(code_html);

												/*
												 * alert("code
												 * :"+statut);
												 * console.dir(statut);
												 */

												if (code_html
														.trim()!== "failed") {

													
													var splits = code_html.split("#");

													console.log(splits);

													// alert($email);
													// alert($codeclient);
													// alert($nom);

													//out.println(c.getCodecompte()+"#"+c.getDatecreatiion()+"#"+c.getSolde()+"#"+c.getClient().getNom()+"#"+c.getTYPE_CPTE());
													
													CodeAccount = splits[0];
													$("#code_cpte").html("Code compte :<b> "+splits[0]+"</b>");
													$("#date").html("Date de creation : <b>"+splits[1]+"</b>");
													$("#solde").html("Solde : </b>"+splits[2]+" </b>");
													
													$("#client").html("Client : <b>"+splits[3]+" </b>");
													$("#type").html("Type :<b>"+splits[4]+"</b>");
													
													
													$("#label_compte").html("Compte :<h3> "+splits[0]+"</h3>");
													
//													swal(
//															
//															
//															
//															
//															"success registration",
//															"Le client "
//																	+ $(
//																			"input[name='nom'")
//																			.val()
//																	+ "  est sauvegarde",
//															"success");

												} else
													swal(
															"failure registration",
															"Code incorecte   "
																	+$("#code_cpte").val()
																	+ " ",
															"error");

												$(
														"input[name='nom']")
														.val(
																"");
												$(
														"input[name='email']")
														.val(
																"");
												// .............................

											},

											error : function(
													resultat,
													statut,
													erreur) {

												swal(
														"failure registration",
														resultat,
														"error");
											}
										});

							});		
					
		/*********************************************************************************************************************************/
					
					$("#Ajouter_clients")
					.click(
							function() {

								alert("je suis dans ajouter");

								$
										.ajax({
											url : 'Ajouter/saveclient.jsp',
											type : 'POST', 

											data : 'nom='
													+ $(
															"input[name='nom']")
															.val()
													+ '&email='
													+ $(
															"input[name='email']")
															.val(),

											dataType : 'html',
											success : function(
													code_html) {

												console
														.log(code_html);

												/*
												 * alert("code
												 * :"+statut);
												 * console.dir(statut);
												 */

												if (code_html
														.trim() == "success") {

													swal(
															"success registration",
															"Le client "
																	+ $(
																			"input[name='nom'")
																			.val()
																	+ "  est sauvegarde",
															"success");

												} else
													swal(
															"failure registration",
															"impossible de sauvergader   "
																	+ $(
																			"input[name='nom']")
																			.val()
																	+ " ",
															"error");

												$(
														"input[name='nom']")
														.val(
																"");
												$(
														"input[name='email']")
														.val(
																"");
												// .............................

											},

											error : function(
													resultat,
													statut,
													erreur) {

												swal(
														"failure registration",
														resultat,
														"error");
											}
										});

							});
					/*********************************************************************************************************************************/

					$("#Ajouter_compte").on('click', function() {

						alert("je suis dans ajouter");
						console.log("rererererererer");
						
						 var type=$("input[name='radio']:checked").val();
																
												$.ajax({
													url : 'Ajouter/savecompte.jsp',
													type : 'POST', // Le
													// type
													// de
													// la
													// requête
													// HTTP,
													// ici
													// devenu
													// POST

													data : 'code='+ $("#code").val()+ '&date='+ $("#date").val()+ '&solde='+$("#solde").val()+"&client="+$("#nom_clients").val()+'&type='+type,
												
													dataType : 'html',
													success : function(
															code_html) {

														console.log(code_html);

														/*
														 * alert("code
														 * :"+statut);
														 * console.dir(statut);
														 */

														if (code_html.trim() == "success") {

															swal(
																	"success registration",
																	"Le compte "
																			+  $("#code").val()
								
																			+ "  est sauvegarde",
																	"success");

														} else
															swal(
																	"failure registration",
																	"impossible de sauvergader   "
																			+ $("#code").val()
																			+ " ",
																	"error");

														$("#code").val("");
														$("#solde").val("");
														$("#date").val("");
														
														// .............................

													},

													error : function(resultat,
															statut, erreur) {

														swal(
																"failure registration",
																resultat,
																"error");
													}
												});


				});
					/*********************************************************************************************************/

					$(document)
							.on(
									'click',
									'button#modifier',
									function() {

										$("#form_modifier").slideToggle(2000);

										var myString = $(this).attr("value");
										var splits = myString.split("-", 3);

										console.log(splits);

										// alert($email);
										// alert($codeclient);
										// alert($nom);

										$("#name").val(splits[1]);
										$("#code").val(splits[0]);
										$("#email").val(splits[2]);

										$("button#Modifier_clients")
												.click(
														function() {

															// alert("je sui dans modifier c lients");

															$codeclient = $(
																	this).attr(
																	"value");

															$
																	.ajax({
																		url : 'Modifier/modifierclient.jsp',

																		type : 'POST', // Le
																						// type
																						// de
																						// la
																						// requête
																						// HTTP,
																						// ici
																						// devenu
																						// POST

																		data : 'code='
																				+ $(
																						"#code")
																						.val()
																				+ '&nom='
																				+ $(
																						"#name")
																						.val()
																				+ '&email='
																				+ $(
																						"#email")
																						.val(),

																		dataType : 'html',

																		success : function(
																				code_html,
																				status) {

																			if (code_html
																					.trim() == "success") {

																				swal(
																						"success registration",
																						"Le client "
																								+ $(
																										"#name")
																										.val()
																								+ "  a ete  modifier",
																						"success");

																			} else
																				swal(
																						"failure registration",
																						"impossible de sauvergader   "
																								+ $(
																										"#name")
																										.val()
																								+ " ",
																						"error");

																			RefreshList();

																		},

																		error : function(
																				resultat,
																				statut,
																				erreur) {

																			swal(
																					"failure registration",
																					resultat,
																					"error");
																		}
																	});

														});
									
										
										$("#annuler").click(function() {

											RefreshList();
											$("#form_modifier").hide();

										});
									});
							
/*************************************************************************************/
			
										var $codeclient = "";

										// $(document).on('click',
										// 'button.btn-danger', function() {
										//	    
										//
										// //
										// $("button[class*='btn-danger']").on("click",function(){
										//		  
										// $codeclient=$(this).attr("value");
										//		   
										// alert($codeclient);
										//		  
										// // });
										// });
										//  

										$(document)
												.on(
														'click',
														'button#supprimer',
														function() {

															alert("je suis dasn supprimer");

															// $(this).attr("data-dismiss","modal");

															$codeclient = $(
																	this).attr(
																	"value");

															//alert($codeclient);

															$
																	.ajax({
																		url : 'supprimerclient.jsp',
																		type : 'POST', // Le type de la requête HTTP, ici devenu POST

																		data : 'code='
																				+ $codeclient,

																		dataType : 'html',

																		success : function(
																				code_html) {

																			if (code_html
																					.trim() == "success") {

																				swal(
																						"success deleted",
																						"Le client  "
																								+ $codeclient
																								+ " est supprime",
																						"success");

																			} else {

																				swal(
																						"failure deleted",
																						"impossible de supprimer le client "
																								+ $codeclient
																								+ " ",
																						"error");

																			}

																			RefreshList();

																		},

																		error : function(
																				resultat,
																				statut,
																				erreur) {
																			swal(
																					"failure deleted",
																					resultat,
																					"error");
																			// document.location.href="ListeFormation.jsp";
																		}
																	});

														});
			/*******************************************************************************************************/

										function RefreshList() {

											//  alert("je suis dasn rafraichir la page ");

											$("#form_modifier").hide();
											$.ajax({
												url : 'Liste/Listeclient.jsp',
												type : 'GET', // Le type de la requête HTTP, ici devenu POST

												dataType : 'html',

												success : function(code_html,
														statut) {

													//alert(statut);

													if (statut == "success") {

														$("#tableau").html(
																code_html);

													}

												},

												error : function(resultat,
														statut, erreur) {

													// document.location.href="ListeFormation.jsp";
												}
											});

										}

									/************************************************************/

					$(function() {

						//$("#date").hide();		    

						$("#date").Zebra_DatePicker({

							direction : [ 1, 10 ],
							format : 'Y-m-d',

						});
						//              
						//           
					});
					
					
				});
