
  `downtime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_downtime`
--

INSERT INTO `booking_downtime` (`id`, `reg_no`, `downtime`) VALUES
(1, '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`) VALUES
(1, 'smtp', 'mail.google.com', '465', 'hmisahaq01@gmail.com', 'hmisahaq01730164623', 'html');

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `is_assign` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES
(1, 'Collins', 'Chibuike', 'Driver', '2424', 'collins@avceratech.com', '3322', NULL, '', '', NULL, 'O+', 'Nigeria', 'Onitsha', '45638022', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES
(1, 'Driver', 'Expert in Driving', NULL),
(8, 'Office Staff', 'regular staff', NULL),
(6, 'Assistant', '', NULL),
(9, 'Hostess', 'Bus Hostess for assistance', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fit_fitness`
--

CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fleet_facilities`
--

CREATE TABLE `fleet_facilities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fleet_facilities`
--

INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES
(1, 'BREAKFAST', 'Free Tea', 1),
(2, 'Snacks', 'Meatpie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_registration`
--

CREATE TABLE `fleet_registration` (
  `id` int(11) UNSIGNED NOT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_assign` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-
(23, 'sender_name', 'Sender Name', 'Nom de l\'expediteur'),
(24, 'subject', 'Subject', 'Sujet'),
(25, 'message', 'Message', 'Message'),
(26, 'message_sent', 'Message Sent!', 'Message envoyé'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'last_login', 'Last Login', 'Dernière connexion'),
(29, 'last_logout', 'Last Logout', 'Dernière déconnexion'),
(30, 'status', 'Status', 'Status'),
(31, 'delete_successfully', 'Delete Successfully!', 'Suppression réussi'),
(32, 'send', 'Send', 'Envoyer'),
(33, 'date', 'Date', 'Date'),
(34, 'action', 'Action', 'Action'),
(35, 'sl_no', 'SL No.', 'N° SL'),
(36, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure ?'),
(37, 'application_setting', 'Application Setting', 'Reglages d\'application'),
(38, 'application_title', 'Application Title', 'Titre d\'application'),
(39, 'address', 'Address', 'Adresse'),
(40, 'phone', 'Phone', 'Phone'),
(41, 'favicon', 'Favicon', 'Favicon'),
(42, 'logo', 'Logo', 'Logo'),
(43, 'language', 'Language', 'Langue'),
(44, 'left_to_right', 'Left To Right', 'Gauche vers droite'),
(45, 'right_to_left', 'Right To Left', 'Droite vers la gauche'),
(46, 'footer_text', 'Footer Text', 'Texte du footer'),
(47, 'site_align', 'Application Alignment', 'Aligner le site'),
(48, 'welcome_back', 'Welcome Back!', 'Bienvenue à nouveau'),
(49, 'please_contact_with_admin', 'Please Contact With Admin', 'Veuillez contacter l\'administrateur'),
(50, 'incorrect_email_or_password', 'Incorrect Email/Password', 'Mot de passe ou Email incorrect'),
(51, 'select_option', 'Select Option', 'Option de selection'),
(52, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Reglage FTP'),
(53, 'hostname', 'Host Name', 'Hostname'),
(54, 'username', 'User Name', 'Nom d\'utilisateur'),
(55, 'ftp_port', 'FTP Port', 'Port FTP'),
(56, 'ftp_debug', 'FTP Debug', 'Debogage FTP '),
(57, 'project_root', 'Project Root', 'Racine du projet'),
(58, 'update_successfully', 'Update Successfully', 'Mise à jour reussi'),
(59, 'save_successfully', 'Save Successfully!', 'Sauvegarde réussie'),
(61, 'internet_connection', 'Internet Connection', 'Connexion internet'),
(62, 'ok', 'Ok', 'Ok'),
(63, 'not_available', 'Not Available', 'Indisponible'),
(64, 'available', 'Available', 'Disponible'),
(65, 'outgoing_file', 'Outgoing File', 'Fichier sortant'),
(66, 'incoming_file', 'Incoming File', 'Fichier entrant '),
(67, 'data_synchronize', 'Data Synchronize', 'Synchroniser les données'),
(68, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Impossible de charger les données veuillez vérifier les configurations'),
(69, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Veuillez configurer les paramètres de synchronisation'),
(70, 'download_successfully', 'Download Successfully', 'Téléchargement réussi'),
(71, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'Téléchargement impossible, veuillez vérifier votre connexion internet'),
(72, 'data_import_first', 'Data Import First', 'Importer d\'abord les données'),
(73, 'data_import_successfully', 'Data Import Successfully!', 'Import de données réussi'),
(74, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Impossible d\'importer les données, veuillez vérifier les configurations'),
(75, 'download_data_from_server', 'Download Data from Server', 'Télécharger les données du serveur'),
(76, 'data_import_to_database', 'Data Import To Database', 'Import de données dans la base de données'),
(77, 'data_upload_to_server', 'Data Upload to Server', 'Charger les données dans le seveur'),
(78, 'please_wait', 'Please Wait...', 'Veuillez patienter'),
(79, 'ooops_something_went_wrong', ' Ooops something went wrong...', 'Oops, quelque chose a mal fonctionné'),
(80, 'module_permission_list', 'Module Permission List', 'Liste de permission du module'),
(81, 'user_permission', 'User Permission', 'Permission utilisateur'),
(82, 'add_module_permission', 'Add Module Permission', 'Ajouter module de permission'),
(83, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permission du module ajoutée avec succès'),
(84, 'update_module_permission', 'Update Module Permission', 'Mettre à jour le module de permission'),
(85, 'download', 'Download', 'Télécharger'),
(86, 'module_name', 'Module Name', 'Nom du module'),
(87, 'create', 'Create', 'Créer'),
(88, 'read', 'Read', 'Lu'),
(89, 'update', 'Update', 'Mettre à jour'),
(90, 'delete', 'Delete', 'Supprimer '),
(91, 'module_list', 'Module List', 'Liste de module'),
(92, 'add_module', 'Add Module', 'Ajouter module'),
(93, 'directory', 'Module Direcotory', 'Repertoire'),
(94, 'description', 'Description', 'Description'),
(95, 'image_upload_successfully', 'Image Upload Successfully!', 'Image mis à jour avec succès'),
(96, 'module_added_successfully', 'Module Added Successfully', 'Module ajouté avec succès'),
(97, 'inactive', 'Inactive', 'Inactif'),
(98, 'active', 'Active', 'Actif'),
(99, 'user_list', 'User List', 'Liste d\'utilisateur'),
(100, 'see_all_message', 'See All Messages', 'Voir tous les messages'),
(101, 'setting', 'Setting', 'Reglages'),
(102, 'logout', 'LOGOUT', 'Déconnexion'),
(103, 'admin', 'Admin', 'Administrateur'),
(104, 'add_user', 'Add User', 'Ajouter un utilisateur'),
(105, 'user', 'User', 'Utilisateur'),
(106, 'module', 'Module', 'Module'),
(107, 'new', 'New', 'Nouveau'),
(108, 'inbox', 'Inbox', 'Boite de reception'),
(109, 'sent', 'Sent', 'Envoyé'),
(110, 'synchronize', 'Synchronize', 'Synchroniser'),
(111, 'data_synchronizer', 'Data Synchronizer', 'Synchronisation de données'),
(112, 'module_permission', 'Module Permission', 'Permission du module'),
(113, 'backup_now', 'Backup Now!', 'Sauvegarder maintenant'),
(114, 'restore_now', 'Restore Now!', 'Restaurer maintenant'),
(115, 'backup_and_restore', 'Data Backup', 'Suavegarde et restauration'),
(116, 'captcha', 'Captcha Word', 'Captcha'),
(117, 'database_backup', 'Database Backup', 'Sauvegarde base de donnée'),
(118, 'restore_successfully', 'Restore Successfully', 'Restauration réussi'),
(119, 'backup_successfully', 'Backup Successfully', 'Sauvegarde réussi'),
(120, 'filename', 'File Name', ' Nom du fichier'),
(121, 'file_information', 'File Information', 'Info du fichier'),
(122, 'size', 'Size', 'Taille'),
(123, 'backup_date', 'Backup Date', 'Date de sauvegarde'),
(124, 'overwrite', 'Overwrite', 'Ecraser'),
(125, 'invalid_file', 'Invalid File!', 'Fichier invalide'),
(126, 'invalid_module', 'Invalid Module', 'Module invalide'),
(127, 'remove_successfully', 'Remove Successfully!', 'Retiré avec succès'),
(128, 'install', 'Install', 'Installer'),
(129, 'uninstall', 'Uninstall', 'Désinstaller'),
(130, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'Tables indisponibles dans les bases de données'),
(131, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Pas de tickets enregistrés dans les configurations'),
(132, 'enquiry', 'Enquiry', 'Requetes'),
(133, 'read_unread', 'Read/Unread', 'Lu et non lu'),
(134, 'enquiry_information', 'Enquiry Information', 'info de requete'),
(135, 'user_agent', 'User Agent', 'Utilisateur agent'),
(136, 'checked_by', 'Checked By', 'Verifié par'),
(137, 'new_enquiry', 'New Enquiry', 'Nouvelle requête'),
(138, 'fleet', 'Fleet Management', 'Flotte'),
(139, 'fleet_type', 'Fleet Type', 'Type de vehicule'),
(140, 'add', 'Add', 'Ajouter'),
(141, 'list', 'List', 'Liste'),
(142, 'fleet_facilities', 'Fleet Facilities', 'Facilités du véhicule'),
(143, 'fleet_registration', 'Vehicles', 'Enregistrement du véhicule'),
(144, 'reg_no', 'Registration No.', 'N° de reg'),
(145, 'model_no', 'Model No.', 'N° du modèle '),
(146, 'engine_no', 'Engine No.', 'N° du moteur'),
(147, 'chasis_no', 'Chasis No.', 'N° de chassis'),
(148, 'total_seat', 'Total Seat', 'Sièges total'),
(149, 'seat_numbers', 'Seat Number', 'Numéro des sièges'),
(150, 'owner', 'Owner', 'Auteur'),
(151, 'company', 'Company Name', 'Societé'),
(152, 'trip', 'Trip Management', 'Voyage'),
(153, 'location', 'Destination', 'Localication'),
(154, 'route', 'Route', 'Ligne'),
(155, 'assign', 'Assign', 'Assigner'),
(156, 'close', 'Close Trip', 'Fermer'),
(157, 'location_name', 'Destination Name', 'Nom de la localisation'),
(158, 'google_map', 'Google Map', 'Google maps'),
(159, 'start_point', 'Start Point', 'Point de départ'),
(160, 'end_point', 'End Point', 'Point d\'arrivé'),
(161, 'route_name', 'Route Name', 'Nom de la ligne'),
(162, 'distance', 'Distance', 'Distance'),
(163, 'approximate_time', 'Approximate Time', 'Temps approximatif'),
(164, 'stoppage_points', 'Stoppage Points', 'Points d\'arrets'),
(165, 'fleet_registration_no', 'Fleet Registration No.', 'N° d\'enregistrement du véhicule'),
(166, 'start_date', 'Start Date', 'Date de début'),
(167, 'end_date', 'End Date', 'Date de fin'),
(168, 'driver_name', 'Driver Name', 'Nom du chauffeur'),
(169, 'assistants_ids', 'Assistants', 'ID d\'assignations'),
(170, 'sold_ticket', 'Sold Ticket', 'Tickets vendus'),
(171, 'total_income', 'Total Income', 'Revenu total'),
(172, 'total_expense', 'Total Expense', 'Total dépenses'),
(173, 'total_fuel', 'Total Fuel', 'Total Fuel'),
(174, 'trip_comment', 'Trip Comment', 'Commentaire du voyage'),
(175, 'closed_by', 'Closed by', 'Fermé par '),
(176, 'ticket', 'Ticket Management', 'Ticket'),
(177, 'passenger', 'Passenger', 'Passager'),
(178, 'middle_name', 'Middle Name', 'Autre nom'),
(179, 'date_of_birth', 'Date of Birth', 'Date de naissance'),
(180, 'passenger_id', 'Passenger ID.', 'ID du passager'),
(181, 'address_line_1', 'Address Line 1', 'Adresse 1'),
(182, 'address_line_2', 'Address Line 2', 'Adresse 1'),
(184, 'zip_code', 'Zip Code', 'Code zip'),
(186, 'name', 'Name', 'Nom'),
(187, 'ac_available', 'AC available', 'Clim disponible'),
(188, 'trip_id', 'Trip ID.', 'ID du voyage'),
(189, 'book', 'Book', 'Reserver'),
(190, 'booking_id', 'Booking ID.', 'ID de reservation'),
(191, 'available_seats', 'Available Seats', 'Sièges disponibles'),
(192, 'select_seats', 'Select Seats', 'Selectionner les sièges'),
(193, 'time', 'Time', 'Temps'),
(194, 'offer_code', 'Offer Code', 'Code de l\'offre'),
(195, 'price', 'Price', 'Prix'),
(196, 'discount', 'Discount', 'Remise'),
(197, 'request_facilities', 'Request Facilities', 'Requêtes de facilités'),
(198, 'pickup_location', 'Pickup Location', 'Localisation de depart'),
(199, 'drop_location', 'Drop Location', 'Destination'),
(200, 'amount', 'Amount', 'Montant'),
(201, 'invalid_passenger_id', 'Invalid Passenger ID', 'ID du passager invalide'),
(202, 'invalid_input', 'Invalid Input', 'Entrée invalide'),
(203, 'booking_date', 'Booking Date', 'Date de reservation'),
(204, 'cancelation_fees', 'Cancelation Fees', 'Frais d\'annulation'),
(205, 'causes', 'Causes', 'Causes'),
(206, 'comment', 'Comment', 'Commentaires'),
(207, 'refund', 'Refund', 'Remboursement'),
(208, 'refund_by', 'Refund by', 'Remboursé par'),
(209, 'feedback', 'Feedback', 'Feedback'),
(210, 'rating', 'Rating', 'Notes'),
(211, 'blood_group', 'Blood Group', 'Groupe sanguin'),
(212, 'religion', 'Religion', 'Religion'),
(219, 'details', 'Details', 'Details'),
(220, 'type_name', 'Type Name', 'Nom du type'),
(221, 'view_details', 'View Details', 'Visualiser les détails'),
(222, 'document_pic', 'Document Picture', 'Image du document'),
(223, 'fitness_list', 'Fitness List', 'Liste fitness'),
(226, 'fitness_name', 'Fitness Name', 'Nom fitness'),
(227, 'fitness_description', 'Description', 'Description fitness'),
(228, 'successfully_updated', 'Your Data Successfully Updated', 'Mise à jour reussi'),
(229, 'fitness_period', 'Fitness Period List', 'Période fitness'),
(230, 'fitness_id', 'Fitness Name', 'ID fitness'),
(231, 'vehicle_id', 'Vehicles No', 'ID vehicule'),
(234, 'start_milage', 'Start Milage', 'Commençer le kilometrage'),
(235, 'end_milage', 'End Milage', 'Fin du KM'),
(236, 'agent', 'Agent', 'Agent'),
(237, 'agent_first_name', 'First Name', 'Nom Agent'),
(238, 'agent_second_name', 'LastName', 'Autre Nom de l\'agent'),
(239, 'agent_company_name', 'Company Name', 'Non Société d\'agent '),
(240, 'agent_document_id', 'Document ID', 'ID Document agent'),
(241, 'agent_pic_document', 'Document File', 'Doc photo agent'),
(242, 'agent_phone', 'Phone', 'Téléphone agent'),
(243, 'agent_mobile', 'Mobile No', 'Mobile Agent'),
(244, 'agent_email', 'Email', 'Email Agent'),
(245, 'agent_address_line_1', 'Address Line 1', 'Adresse d\'agent 1'),
(246, 'agent_address_line_2', 'Address Line 2', 'Adresse d\'agent 2'),
(247, 'agent_address_city', 'City', 'Adresse ville d\'agent'),
(248, 'agent_address_zip_code', 'ZIP', 'Code zip agent'),
(249, 'agent_country', 'Country', 'Pays d\'agent'),
(252, 'sl', 'SL', 'sl'),
(253, 'route_id', 'Route Name', 'ID de ligne'),
(254, 'vehicle_type_id', 'Vehicle Type', 'ID type de véhicule'),
(255, 'group_price_per_person', 'Group Price Per Person', 'Groupe de prix par personne'),
(256, 'group_size', 'Group Members', 'Taille du groupe'),
(257, 'successfully_saved', 'Your Data Successfully Saved', 'Sauvegardé avec succès'),
(258, 'account', 'Account', 'Compte'),
(259, 'account_name', 'Account Name', 'Nom du compte'),
(260, 'account_type', 'Account Type', 'Type de compte'),
(261, 'account_transaction', 'Account Transaction', 'Transaction du compte'),
(262, 'account_id', 'Account Name', 'ID du compte'),
(263, 'transaction_description', 'Transaction Details', 'Description de la transaction'),
(265, 'pass_book_id', 'Passenger ID', 'ID pass de reservation'),
(267, 'payment_id', 'Payment ID', 'ID de paiement '),
(268, 'create_by_id', 'Created By', 'Créer l\'ID par'),
(269, 'offer', 'Offer', 'Offres'),
(270, 'offer_name', 'Offer Name', 'Nom de l\'offre'),
(271, 'offer_start_date', 'Offer Start Date', 'Date de debut de l\'offre'),
(272, 'offer_end_date', 'Offer Last Date', 'Datae de fin de l\'offre'),
(274, 'offer_discount', 'Discount', 'Remise de l\'offre '),
(275, 'offer_terms', 'Offer Terms', 'Termes de l\'offre'),
(276, 'offer_route_id', 'Route Name', 'ID offre de voyage'),
(277, 'offer_number', 'Offer Number', 'N° de l\'offre'),
(280, 'seat_number', 'Seat No', 'N° du siège '),
(281, 'available_seat', 'Available Seat', 'Siège disponible'),
(282, 'owner_name', 'Owner Name', 'Nom de l\'auteur'),
(283, 'agent_picture', 'Picture', 'Photo Agent'),
(284, 'account_add', 'Add Account', 'Ajouter un compte'),
(285, 'add_agent', 'Add Agent', 'Ajouter agent'),
(286, 'hr', 'Human Resource', 'Ressource Humaine'),
(287, 'create_hr', 'Add Employee', 'Créer l\'heure'),
(288, 'serial', 'Sl', 'Serial'),
(289, 'position', 'Position', 'Position'),
(290, 'phone_no', 'Phone No', 'N° de téléphone'),
(291, 'email_no', 'Email', 'N° Email'),
(292, 'picture', 'Picture', 'Photo'),
(293, 'first_name', 'First Name', 'Nom'),
(294, 'second_name', 'Last Name', 'Deuxième nom'),
(295, 'document_id', 'Documet Id', 'ID document'),
(298, 'country', 'Country', 'Pays'),
(299, 'city', 'City', 'Ville '),
(300, 'zip', 'Zip ', 'Zip '),
(393, 'add_passenger', 'Add Passenger', 'Ajouter un passager'),
(394, 'search_tiket', 'Search Ticket', 'Rechercher le ticket'),
(395, 'slogan', 'Slogan', 'Slogan'),
(396, 'website', 'Website', 'Site web'),
(397, 'submit', 'Submit', 'Envoyer'),
(398, 'customer_service', 'Customer Service', 'Service client'),
(399, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(400, 'add_to_website', 'Add to Website', 'Ajouter au site'),
(401, 'our_customers_say', 'Our Customers Say', 'Ce que disent nos clients'),
(402, 'website_status', 'Website Status', 'Status site web'),
(403, 'title', 'Title', 'Titre'),
(405, 'total_fleet', 'Total Fleet', 'Total flotte véhicules'),
(406, 'total_passenger', 'Total Passenger', 'Total passagers'),
(407, 'todays_trip', 'Today\'s Trip', 'Voyage d\'aujourd\'hui'),
(408, 'seats_available', 'Seats Available', 'Sièges disponibles'),
(409, 'no_trip_avaiable', 'No trip avaiable', 'Aucun voyage disponible'),
(410, 'booking', 'Booking', 'Reservations'),
(411, 'something_went_worng', 'Something went worng!', 'Quelque chose a mal fonctionné'),
(412, 'paypal_email', 'Paypal Email', 'Email Paypal'),
(413, 'currency', 'Currency', 'Dévise'),
(414, 'reports', 'Reports', 'Rapports'),
(415, 'search', 'Search', 'Rechercher'),
(417, 'go', 'Go', 'Lancer'),
(418, 'all', 'All', 'Tout'),
(419, 'filter', 'Filter', 'Filter'),
(420, 'last_year_progress', 'Last Year Progress', 'Progrès l\'an dernier'),
(421, 'download_document', 'Download Document', 'Télécharger le document'),
(422, 'mobile', 'Mobile No.', 'Mobile '),
(424, 'account_list', 'Account List', 'Liste de comptes'),
(425, 'add_income', 'Add Income', 'Ajouter une entrée'),
(426, 'add_expense', 'Add Expense', 'Ajouter une dépense'),
(427, 'agent_list', 'Agent List', 'Liste d\'agent'),
(428, 'add_fitness', 'Add Fitness', 'Ajouter fitness'),
(429, 'fitness', 'Fitness', 'Fitness'),
(430, 'add_fitness_period', 'Add Fitness Period', 'Ajouter Période fitness'),
(431, 'employee_type', 'Employee Type', 'Type d\'employé'),
(432, 'employee_list', 'Employee List', 'Liste d\'employé'),
(433, 'add_offer', 'Add Offer', 'Ajouter une offre'),
(434, 'offer_list', 'Offer List', 'Liste d\'offre'),
(435, 'add_price', 'Add Price', 'Ajouter un prix'),
(436, 'price_list', 'Price List', 'Liste de prix'),
(437, 'layout', 'Layout', 'Aperçu'),
(438, 'last_seat_availabe', 'Last Seat Available', 'Dernier siège disponible'),
(439, 'paypal_transaction', 'Paypal Transaction', 'Transaction paypal'),
(440, 'enable', 'Enable', 'Activer'),
(441, 'disable', 'Disable', 'Desactiver'),
(442, 'payment_gateway', 'Payment Gateway', 'Passerelle de paiement'),
(443, 'payment_type', 'Payment Type', 'Type de paiement'),
(444, 'payment_status', 'Payment Status', 'Status de paiement'),
(445, 'downtime', 'Down Time', 'Temps hors service'),
(446, 'select_bus', 'Select Bus', 'Selectionner le bus'),
(447, 'user_info', 'Passenger Information', 'Informations d\'utilisateur'),
(448, 'personal_info', 'Personal Information', 'Informations personnelles'),
(449, 'booking_info', 'Booking Information', 'Info de reservation'),
(450, 'update_your_profile', 'Edit your Profile', 'Mettre à jour votre profil'),
(451, 'email_configue', 'Email Configuration', 'Reglage Email'),
(452, 'protocol', 'Protocol', 'Protocol'),
(453, 'smtp_host', 'SMTP Host', 'host smtp'),
(454, 'smtp_port', 'SMTP Port', 'port smtp'),
(455, 'smtp_pass', 'SMTP Password', 'pass smtp'),
(456, 'mailtype', 'Mail Type', 'Type de mail'),
(457, 'smtp_user', 'SMTP User', 'utilisateur smtp'),
(458, 'html', 'Html', 'HTML'),
(459, 'text', 'Text', 'Texte '),
(460, 'email_send_to_passenger', ' Email Sent Sucessfully', 'Mail envoyé au passager'),
(461, 'bank', 'Bank Information', 'Banque'),
(462, 'instruction', 'Instruction', 'Instruction'),
(463, 'account_details', 'Account Details', 'Details du compte'),
(464, 'bank_logo', 'Bank Logo', 'Logo banque'),
(465, 'bank_name', 'Bank Name', 'Nom de banque'),
(466, 'bank_trans', 'Bank', 'Transation banque'),
(467, 'transaction_successfully_send', 'Your Information successfully Send', 'Transaction envoyé avec succès'),
(468, 'confirmation', 'Confirmation', 'Confirmation'),
(469, 'account_no', 'Account No', 'N° du compte'),
(470, 'transaction_no', 'Transaction No', 'N° de la transaction'),
(471, 'paypal', 'Paypal', 'Paypal'),
(472, 'cash', 'Cash', 'Cash'),
(473, 'paypal_checkout', 'Paypal Checkout', 'Checkout Paypal'),
(474, 'confirm_banking', 'Confirm Banking', 'Confirmation bancaire'),
(475, 'payment_information', 'Payment Information', 'Informaition de paiement '),
(476, 'email_gritting', 'Congratulation Mr.', 'Email personalisé'),
(477, 'email_ticket_idinfo', 'Your Purchase Ticket No-', 'ID info email'),
(478, 'ticket_confirmation', 'Unpaid Bank Booking List', 'Confirmation ticket'),
(479, 'deny', 'Deny', 'Rejeter'),
(480, 'confirm', 'CONFIRM', 'Confirmer'),
(481, 'note', 'Note', 'Note'),
(482, 'accournt_no', 'Account Number', 'N° Compte'),
(483, 'payer_name', 'Payer Name', 'Nom du payeur'),
(484, 'accournt_non', 'Account Number', 'N° Compte'),
(485, 'confirm_booking', 'Confirm Booking', 'Confirmer la réservation'),
(486, 'account_num', 'Account Number', 'Numéro du compte'),
(487, 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image', 'Logo invalide'),
(488, 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image', 'Favicon invalide'),
(489, 'print_ticket', 'Print Ticket', 'Imprimmer le ticket'),
(490, 'cancel_ticket', 'Cancel Ticket', 'Annuler le ticket'),
(491, 'email_not_send', 'Email Not Send', 'Email non envoyé'),
e',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Human Resource', 'Human Resource information module', 'application/modules/hr/assets/images/thumbnail.jpg', 'hr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ofr_offer`
--

CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_informations`
--

(110, 'employee_list', 'viewhr', 'hr', 0, 0, 2, '2018-07-30 00:00:00'),
(111, 'fleet_registration', 'registration/form', 'fleet', 0, 0, 2, '2018-08-14 00:00:00'),
(112, 'add_registration', 'registration/form', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(113, 'registration_list', 'registration/list', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(114, 'ticket_confirmation', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(115, 'refund', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(116, 'add_refund', 'refund/form', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(117, 'refund_list', 'refund/list', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(118, 'shedules', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(119, 'add_shedule', 'shedule/shedule_form', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(120, 'shedule_list', 'shedule/list', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(121, 'trips', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(122, 'add_trip', 'trip/form', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(123, 'trip_list', 'trip/list', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(124, 'assigns', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(125, 'add_assign', 'assign/form', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(126, 'assign_list', 'assign/list', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(127, 'close', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(128, 'close_list', 'close/list', 'trip', 127, 0, 2, '2018-08-14 00:00:00'),
(129, 'account', '', 'account', 0, 0, 2, '2018-08-14 00:00:00'),
(130, 'reports', '', 'reports', 0, 0, 2, '2018-09-11 00:00:00'),
(131, 'agent_log', 'agent/agent_details', 'reports', 130, 0, 2, '2018-09-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES
(1104, 2, 69, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1105, 2, 81, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1106, 2, 82, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1107, 2, 83, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1108, 2, 84, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1109, 2, 129, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1110, 2, 72, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1111, 2, 70, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1112, 2, 71, 0, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1113, 2, 73, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1114, 2, 74, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1115, 2, 75, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1116, 2, 76, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1117, 2, 77, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1118, 2, 78, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1119, 2, 79, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1120, 2, 80, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1121, 2, 111, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1122, 2, 112, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1123, 2, 113, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1124, 2, 109, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1125, 2, 110, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1126, 2, 85, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1127, 2, 86, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1128, 2, 87, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1129, 2, 88, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1130, 2, 130, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1131, 2, 131, 1, 0, 1, 0, 2, '2018-11-15 01:11:30'),
(1132, 2, 89, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1133, 2, 90, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1134, 2, 91, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1135, 2, 92, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1136, 2, 93, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1137, 2, 94, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1138, 2, 105, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1139, 2, 108, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1140, 2, 114, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1141, 2, 115, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1142, 2, 116, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1143, 2, 117, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1144, 2, 95, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1145, 2, 96, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1146, 2, 97, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1147, 2, 98, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1148, 2, 99, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1149, 2, 100, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1150, 2, 118, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),

-- --------------------------------------------------------

--
-- Table structure for table `tkt_refund`
--

CREATE TABLE `tkt_refund` (
  `id` int(11) UNSIGNED NOT NULL,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `weekend` varchar(50) DEFAULT '0',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `weekend`, `status`) VALUES
(1, 'AWKA-ONITSHA', 1, 2, 1, '0', 1),
(2, 'ONITSHA-AWKA', 1, 1, 1, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_assign`
--

CREATE TABLE `trip_assign` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `assign_time` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT 0,
  `total_income` float DEFAULT 0,
  `total_expense` float DEFAULT 0,
  `total_fuel` float DEFAULT 0,
  `trip_comment` text DEFAULT NULL,
  `closed_by_id` int(11) DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_assign`
--

INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES
(1, '220118124516', 1, '1', '2022-01-18 00:50:00', 1, '0', '0', '0', 0, 0, 0, 0, NULL, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_location`
--

CREATE TABLE `trip_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_location`
--

INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES
(1, 'Omagba Onitsha', '', '', '', 1),
(2, 'Savoy Junction Onitsha', '', '', '', 1),
(3, 'DMGS Roundabout Onitsha', '', '', '', 1),
(4, 'Aroma Junction Awka', '', '', '', 1),
(5, 'Unizik Road Awka', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_route`
--

CREATE TABLE `trip_route` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` varchar(30) DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT 0,
  `special_seat` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_route`
--

INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES
(1, 'ONITSHA-AWKA', '2', '5', 'Aroma Junction Awka,Savoy Junction Onitsha,Unizik Road Awka', '8KM', '4hrs', 1, 1, 1),
(2, 'AWKA-ONITSHA', '4', '3', 'Savoy Junction Onitsha,Aroma Junction Awka,DMGS Roundabout Onitsha', '7KM', '4hrs', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
(1, NULL, NULL, NULL, 'admin@admin.com', 'aed6bffa1c0dcc5bb1c81eefabdf60ab', NULL, NULL, '2022-01-18 00:15:41', NULL, '127.0.0.1', 1, 1),
(2, 'Collins', 'Chibuike', '', 'collins@avceratech.com.ng', 'e10adc3949ba59abbe56e057f20f883e', NULL, '', NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_booking_history`
--

CREATE TABLE `ws_booking_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_booking_history`
--

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES
(1, 'BZCUIC39', '2', 'PJXG1TSE', 1, 'Savoy', 'Aroma', 'BREAKFAST, ', 1700, 0, 1, 1, 1, 3, '1, 3, 4, ', '', NULL, NULL, '2022-01-18 01:14:28', '2022-01-18 01:14:28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_offer`
--

CREATE TABLE `ws_offer` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ws_payments`
--

CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ws_setting`
--

CREATE TABLE `ws_setting` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `timezone` varchar(200) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `bank_commission` float NOT NULL DEFAULT 0,
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_setting`
--

INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `timezone`, `about`, `description`, `payment_type`, `paypal_email`, `bank_commission`, `currency`, `google_map`) VALUES
(1, 'Arichen Tour', 'We take you Around the World', 'Omagba Onitsha Anambra', 'arichentour@gmail.com', '0123456789', 'application/modules/website/assets/images/icons/8b1186aabde6c7218062ab6d894e4367.png', 'application/modules/website/assets/images/icons/69aa025e7359b74eeb27f8f3b5f39477.png', 1, 'Africa/Lagos', '', '', 'enable', 'business@test.com', 1, '₦', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.7724407117266!2d90.38595131408418!3d23.75549289450067!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a4136c4b61%3A0x19549f5462616f04!2sBDTASK!5e0!3m2!1sen!2sbd!4v1531724548584\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  ADD PRIMARY KEY (`account_tran_id`);

--
-- Indexes for table `agent_info`
--
ALTER TABLE `agent_info`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `agent_ledger`
--
ALTER TABLE `agent_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_downtime`
--
ALTER TABLE `booking_downtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `fit_fitness`
--
ALTER TABLE `fit_fitness`
  ADD PRIMARY KEY (`fitness_id`);

--
-- Indexes for table `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_registration`
--
ALTER TABLE `fleet_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_type`
--
ALTER TABLE `fleet_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_to_use`
--
ALTER TABLE `how_to_use`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofr_offer`
--
ALTER TABLE `ofr_offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `payment_informations`
--
ALTER TABLE `payment_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pri_price`
--
ALTER TABLE `pri_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  ADD PRIMARY KEY (`role_acc_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`shedule_id`);

--
-- Indexes for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_notification`
--
ALTER TABLE `ticket_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_booking`
--
ALTER TABLE `tkt_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_referal`
--
ALTER TABLE `tkt_referal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_refund`
--
ALTER TABLE `tkt_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `trip_assign`
--
ALTER TABLE `trip_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_location`
--
ALTER TABLE `trip_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_route`
--
ALTER TABLE `trip_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `ws_offer`
--
ALTER TABLE `ws_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_payments`
--
ALTER TABLE `ws_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `ws_setting`
--
ALTER TABLE `ws_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  MODIFY `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_info`
--
ALTER TABLE `agent_info`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agent_ledger`
--
ALTER TABLE `agent_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_downtime`
--
ALTER TABLE `booking_downtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fit_fitness`
--
ALTER TABLE `fit_fitness`
  MODIFY `fitness_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fleet_registration`
--
ALTER TABLE `fleet_registration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fleet_type`
--
ALTER TABLE `fleet_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `how_to_use`
--
ALTER TABLE `how_to_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ofr_offer`
--
ALTER TABLE `ofr_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_informations`
--
ALTER TABLE `payment_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pri_price`
--
ALTER TABLE `pri_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1165;

--
-- AUTO_INCREMENT for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  MODIFY `role_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shedule`
--
ALTER TABLE `shedule`
  MODIFY `shedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_notification`
--
ALTER TABLE `ticket_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tkt_booking`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
