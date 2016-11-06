SET FOREIGN_KEY_CHECKS=0;
/*Insert statuses*/
truncate statuses;
INSERT INTO `statuses` (`status_name`) VALUES ("Approved"),("Rejected"),("Pending");

/*Insert departments 5 records*/
truncate departments;
INSERT INTO `departments` (`department_name`,`department_description`) VALUES ("Surgery", "Treated using surgery"),("Pediatrics", "Treat the kids"),("Psychiatry", "The most important thing - not to worry"),("Oncology", "I do not envy the patients of this office"),("Cardiology", "The trouble with heart");

/*Insert roles 4rows*/
truncate roles;
INSERT INTO `roles` (`role_name`) VALUES ("Admin"),("Doctor"),("Doctor manager"),("Patient");

/*Insert drugs 4 records*/
truncate drugs;
INSERT INTO `drugs` (`drug_name`,`drug_coefficient`,`drug_description`) VALUES ("Aspirin", 38, "Maybe help with pain in the head"),("Axe", 100, "This medicine helps from everything"),("Valakardin", 78, "Grandma drink and do not complain"),("Vicodin", 65, "It helps with pain in his right leg");

/*Insert symptoms 17 rows*/
truncate symptoms;
INSERT INTO `symptoms` (`symptom_name`,`symptom_description`) VALUES ("Pain in head", "regular pain"),("Pain in leg", "I can not walk"),("Can not stop sweating", "Description of third thimptom"),("Colitis in the left side", "Sometimes in right side too"),("Short of breath", "It begins suddenly"),
("Abdominal pain","Abdominal pain is any type of pain or discomfort that occurs in any area from the lower chest to the groin. Abdominal pain is symptom of a wide variety of mild to serious diseases, disorders and conditions. "),
("Abnormal blood lipid level","High cholesterol, also called hypercholesterolemia or hyperlipidemia, is a very common condition in which the level of total cholesterol in the blood is higher than normal."),
("Diarrhea", "Although many people assume sudden diarrhea is <<something you ate>>"),
("Fatigue","Fatigue is a general term for an abnormal condition in which a person feels a sensation of tiredness, weariness, exhaustion, weakness, or low energy. Fatigue is a symptom of a wide variety of mild to serious diseases, disorders and conditions."),
("Hand swelling","Swelling of one or both hands"),
("Red spots","Red spots on the skin"),
("Bloody stool","Blood in the stool is an abnormal, potentially critical condition, in which there is blood mixed in with the bowel movement or feces."),
("Back pain","Pain in the back region"),
("Chills","A person with severechills feels excessively cold and may be shivering, even when wrapped in blankets"),
("Fever","A fever usually means the body has raised its temperature to fight an infection or condition."),
("Groin pain","The groin is the joint between the hip and the upper leg"),
("Rash","A rash is an abnormal condition and reaction of the skin");

/*Insert diseases 11 rows*/
truncate diseases;
INSERT INTO `diseases` (`disease_name`,`id_department`,`disease_description`) VALUES ("Cancer", 4, "Group of diseases involving abnormal cell growth with the potential to invade or spread to other parts of the body"),("Appendicit", 1, "Appendicitis is one of the most common illnesses requiring emergency surgical care"),("Anemia", 2, "Usually defined as a decrease in amount of red blood cells"),("Cardiomyopathy", 5, "Measurable deterioration for any reason of the ability of the myocardium (the heart muscle) to contract, usually leading to heart failure"),("Amnesia", 3, "Deficit in memory caused by brain damage, disease, or psychological trauma"),
("Heart Disease",5,"Heart disease, such as coronary heart disease, heart attack, congestive heart failure, and congenital heart disease, is the leading cause of death for men and women in the U.S. Prevention includes quitting smoking, lowering cholesterol, controlling high blood pressure, maintaining a healthy weight, and exercising."),
("Panic attack ",3,"A panic attack is a sudden episode of intense fear that triggers severe physical reactions when there is no real danger or apparent cause. Panic attacks can be very frightening. When panic attacks occur, you might think you're losing control, having a heart attack or even dying. "),
("Pancreatitis",1,"Pancreatitis is inflammation in the pancreas. The pancreas is a long, flat gland that sits tucked behind the stomach in the upper abdomen. The pancreas produces enzymes that assist digestion and hormones that help regulate the way your body processes sugar (glucose)."),
("Pediatric sleep apnea",2,"Pediatric obstructive sleep apnea (OSA) is a sleep disorder that occurs when your child's breathing becomes partially or completely blocked repeatedly as your child sleeps. The condition is due to blockage of the upper airway during sleep"),
("Pericarditis",5,"Pericarditis is swelling and irritation of the pericardium, the thin sac-like membrane surrounding your heart. Pericarditis often causes chest pain and sometimes other symptoms. The sharp chest pain associated with pericarditis occurs when the irritated layers of the pericardium rub against each other."),
("Leukemia",4,"Leukemia is cancer of the body's blood-forming tissues, including the bone marrow and the lymphatic system.");

/*Insert users 10 rows*/
truncate users;
INSERT INTO `users` (`full_name`,`login`,`gender`,`email`,`birthday`,`adress`,`phone`, `password`,`status`,`id_department`) VALUES
("Admin Adminovich","administrator","FEMALE","admin@gail.com","1985-02-22", null,"+380948849625","448wwcb8e4a3Q","APPROVED",null);

INSERT INTO `users` (`full_name`,`login`,`gender`,`email`,`birthday`,`adress`,`phone`, `password`,`status`,`id_department`) 
VALUES 
("Raja Estrada","Raja","MALE","lobortis.nisi.nibh@Suspendissealiquetmolestie.com","1938-03-28","Ap #123-5024 Duis Avenue","+723135165208","ffa2263dw894sa6","APPROVED",null),
("Ethan Bowen","Ethan","MALE","erat@liberoettristique.net","1919-04-26","Ap #140-8533 Sapien Av.","+129975347248","ss68ae6d2w964sa","APPROVED",null),
("Noah Delgado","Noah","FEMALE","sed@ametanteVivamus.com","1954-02-23","3577 Elit. St.","+855454444806","wer49s2a98e4hj2x9xs","APPROVED",null),
("Jacob Foreman","Jacob","MALE","feugiat.metus.sit@dolor.net","1945-05-14","P.O. Box 960, 8172 Convallis Street","+256871859211","asdfwtgdsqsdfg66sd89","REJECTED",null);

INSERT INTO `users` (`full_name`,`login`,`gender`,`email`,`birthday`,`adress`,`phone`, `password`,`status`,`id_department`) 
VALUES
("Amena Ball","Amena","FEMALE","scelerisque.sed@vulputatelacusCras.com","1990-12-14","Ap #412-3659 Ultricies Av.","+719933337082","qnt9s4ht8s5","PENDING",1),
("Kasimir Logan","Kasimir","MALE","convallis.in@Sedeu.org","1955-05-09","P.O. Box 334, 1555 Vitae Road","+837020819874","safkosadf498sdsf98","APPROVED",2),
("Iola Mcmillan","Iola","FEMALE","orci.tincidunt.adipiscing@morbitristiquesenectus.org","1947-03-22","P.O. Box 477, 1872 Convallis Ave","+561021534881","asdasdoihjpadsaf55","APPROVED",3),
("Harlan Carson","Harlan","MALE","sed.facilisis@consequatauctornunc.net","1971-10-14","287 Suspendisse Rd.","+430763756275","asd46gfa9898g9sd","APPROVED",4),
("Claudia Burris","Claudia","FEMALE","nonummy.Fusce.fermentum@sagittis.org","1976-07-21","891-2358 Eu, Ave","+163423027899","w9d549hb9s","PENDING",5);

/*Insert cards 3 rows*/
truncate cards;
INSERT INTO `cards` (`id_patient`,`is_active`,`date_`, is_doctor_needed, id_disease, id_doctor) VALUES
(2,1,"2014-09-08",0,1,6),(2,1,"2014-09-08",1,1,null),(3,1,"2014-09-10",0,3,8),(4,1,"2014-09-12",null,null,null);

/*Insert into diseases_drugs 5 rows*/
truncate diseases_drugs;
INSERT INTO `diseases_drugs` (`id_disease`,`id_drug`,`disease_drug_coefficient`) VALUES
(1,2,93),(2,2,92),(3,4,59),(4,1,62),(5,3,69);

/*Insert into diseases_symptoms many) rows*/
truncate diseases_symptoms;
INSERT INTO `diseases_symptoms` (`id_disease`,`id_symptom`) VALUES
(1,1),(1,3),(1,4),(1,5),(1,9),(1,11),(1,15),(1,17),
(2,7),(2,3),(2,9),(2,11),(2,13),(2,15),(2,17),
(3,1),(3,3),(3,6),(3,8),(3,9),(3,11),
(4,5),(4,6),(4,7),(4,9),
(6,7),(5,8),(5,9),(5,12),(5,13),(5,14),(5,15),(5,16),
(7,5),(7,6),(7,7),(7,12),(7,13),(7,14),(7,11),(7,16),
(8,10),(8,9),(8,8),(8,7),(8,6),
(9,7),(9,8),(9,9),(9,12),(9,13),(9,14),(9,15),(9,16),
(10,2),(10,4),(10,6),(10,8),(10,10),(10,12),(10,14),(10,16),
(11,5),(11,7),(11,9),(11,11),(11,13),(11,15);

/*Insert into cards_symptoms 5 rows*/
truncate cards_symptoms;
INSERT INTO `cards_symptoms` (`id_card`,`id_symptom`) VALUES
(1,5),(1,3),(2,5),(2,2),(3,3);

/*Insert into cards_drugs 3 rows*/
truncate cards_drugs;
INSERT INTO `cards_drugs` (`id_card`,`id_drug`) VALUES
(1,3),(2,2),(3,4);

/*Insert into users_roles 5 rows*/
truncate users_roles;
INSERT INTO `users_roles` (`id_user`,`role`) VALUES
(1,"ADMIN"),(2,"PATIENT"),(3,"PATIENT"),(4,"PATIENT"),(6,"DOCTOR"),(7,"DOCTOR"),(8,"DOCTOR"),(9,"DOCTOR_MANAGER");

/*Insert into analysis 14 rows*/
truncate analysis;
INSERT INTO `analysis` (`analysis`,`description`)
VALUES
("Magnetic Resonance Angiogram (MRA)",
"A magnetic resonance angiogram (MRA) is a type of magnetic resonance imaging (MRI) scan that uses a magnetic field and pulses of radio wave energy to provide pictures of blood vessels inside the body. In many cases MRA can provide information that can't be obtained from an X-ray, ultrasound, or computed tomography (CT) scan."),
("Mammogram",
"A mammogram is an X-ray of the breast that is used to screen for breast cancer. Mammograms can find tumors that are too small for you or your doctor to feel."),
("Tuberculin Skin Test", 
"A tuberculin skin test (also called a Mantoux tuberculin test) is done to see if you have ever been exposed to tuberculosis (TB). The test is done by putting a small amount of TB protein (antigens) under the top layer of skin on your inner forearm. If you have ever been exposed to the TB bacteria (Mycobacterium tuberculosis), your skin will react to the antigens by developing a firm red bump at the site within 2 days."),
("Bone Biopsy",
 "A bone biopsy is a procedure in which a small sample of bone is taken from the body and looked at under a microscope for cancer, infection, or other bone disorders."),
("Tests for Bacterial Vaginosis",
"Bacterial vaginosis is caused by a change in the balance of microorganisms found in a healthy vagina. A healthy vagina normally has many microorganisms in it. The microorganisms involved in bacterial vaginosis include Gardnerella, Mobiluncus, Bacteroides, and Mycoplasma. When bacterial vaginosis is present, these microorganisms increase in number while the number of healthy microorganisms decrease."),
("Blood Type Test",
"Blood type tests are done before a person gets a blood transfusion and to check a pregnant woman's blood type. Human blood is typed by certain markers (called antigens) on the surface of red blood cells. Blood type may also be done to see if two people are likely to be blood relatives."),
("Body Temperature",
"Body temperature is a measure of the body's ability to generate and get rid of heat. The body is very good at keeping its temperature within a narrow, safe range in spite of large variations in temperatures outside the body."),
("Blood Culture",
"A blood culture is a test to find an infection in the blood. The blood does not normally have any bacteria or fungi in it. A blood culture can show what bacteria or fungi are in the blood."),
("Total Serum Protein",
"A total serum protein test measures the total amount of protein in the blood. It also measures the amounts of two major groups of proteins in the blood: albumin and globulin."),
("Uric Acid in Blood",
"The blood uric acid test measures the amount of uric acid in a blood sample. Uric acid is produced from the natural breakdown of your body's cells and from the foods you eat."),
("Chemical Peel",
"In a chemical peel, a chemical solution is applied to the skin and allowed to soak in. Over the next 1 to 14 days, depending on how deeply the chemical penetrated the skin, the skin peels off. This procedure destroys parts of the skin in a controlled way so that new skin can grow in its place. The chemicals used are sometimes called exfoliating or wounding agents."),
("Dental X-Rays",
"Dental X-rays are pictures of the teeth, bones, and soft tissues around them to help find problems with the teeth, mouth, and jaw. X-ray pictures can show cavities, hidden dental structures (such as wisdom teeth), and bone loss that cannot be seen during a visual examination. "),
("Ophthalmoscopy",
"Ophthalmoscopy (also called fundoscopy) is a test that allows a doctor to see inside the back of the eye (called the fundus) and other structures using a magnifying instrument (ophthalmoscope) and a light source. It is done as part of an eye exam and may be done as part of a routine physical exam."),
("Toxicology Tests",
"A toxicology test checks blood, urine, or saliva for the presence of drugs or chemicals. In rare cases, stomach contents or sweat may also be checked.");

SET FOREIGN_KEY_CHECKS=1;
