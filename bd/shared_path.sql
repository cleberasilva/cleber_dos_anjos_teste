create database shared_path;
use shared_path;

create table motoristas(
	nome varchar(50),
	nascimento date,
	cpf varchar(11) primary key,
	modelo varchar(20),
	status varchar(7),
	sexo char(1)
);

create table passageiros(
	nome varchar(50),
	nascimento date,
	cpf varchar(11) primary key,
	sexo char(1)
);

create table corridas(
	cpf_mot varchar(11),
	cpf_pas varchar(11),
	primary key(cpf_pas,cpf_mot),
	foreign key(cpf_mot) references motoristas(cpf),
	foreign key(cpf_pas) references passageiros(cpf),
	valor decimal(4,2)
);

insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Junette Larcher', 37734543937, '1990-10-29', 'Female', 'inativo', 'CLS-Class');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Marthena Edyson', 47174147878, '1960-06-10', 'Male', 'inativo', 'S-Type');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Haleigh Middleditch', 97188192438, '2008-12-01', 'Female', 'ativo', 'Mountaineer');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Dorise Janout', 7593455820, '2007-02-27', 'Male', 'inativo', 'Monterey');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Clari Varian', 46400464027, '1969-12-13', 'Female', 'inativo', 'Grand Caravan');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Della Danhel', 2812531992, '1971-12-21', 'Male', 'ativo', 'Malibu');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Aura Banes', 58703337797, '1991-01-20', 'Female', 'ativo', 'Canyon');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Quintina Bault', 24050283052, '1961-04-12', 'Male', 'inativo', 'Freestar');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Dulcie Niles', 16944814873, '1997-06-16', 'Female', 'ativo', 'Crossfire');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Caz Imlaw', 14724567614, '2010-06-03', 'Female', 'inativo', 'CTS');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Julio Goodridge', 26502151081, '1956-12-06', 'Female', 'ativo', 'Cayenne');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Elsinore Hessentaler', 96496326849, '1950-01-20', 'Female', 'inativo', 'NSX');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Mellicent Parkyn', 10685316001, '1981-06-11', 'Male', 'inativo', 'Q');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Lenna Abelevitz', 15791631659, '1974-08-01', 'Male', 'ativo', '350Z');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Roxane Chesterton', 71158933063, '1986-01-28', 'Male', 'inativo', 'LeMans');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Roseann Diament', 58510035786, '2001-05-29', 'Female', 'ativo', 'iQ');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Roseanna Rowlings', 14107859336, '2016-03-28', 'Female', 'inativo', 'SC');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Lura Kleewein', 21707438949, '1959-03-06', 'Female', 'inativo', 'Achieva');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Bathsheba Ulyatt', 40045536574, '1975-12-02', 'Male', 'inativo', 'C70');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Pandora Coltart', 14414336356, '1983-07-27', 'Male', 'inativo', 'Element');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Aline Collimore', 66546501670, '2007-02-17', 'Female', 'inativo', 'Corvette');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Rosanne Lovemore', 63545779652, '1998-10-27', 'Female', 'ativo', 'V70');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Joscelin Hulmes', 69362300697, '1975-04-12', 'Female', 'ativo', 'Firebird');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Aline Moulder', 87236610368, '2013-08-09', 'Male', 'inativo', 'Spirit');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Flo MacGray', 22008659968, '1975-08-24', 'Male', 'ativo', 'GTI');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Klement Beverstock', 41783142831, '1977-11-14', 'Female', 'ativo', 'Skylark');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Bellina Thaim', 64694474769, '1981-11-24', 'Male', 'ativo', 'Expedition');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Jimmie Camillo', 77404573431, '1954-05-05', 'Male', 'inativo', 'XJ');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Chickie Symonds', 75632224075, '1958-06-12', 'Male', 'inativo', 'Yukon XL 2500');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Henrik Pyffe', 9052136087, '1973-06-12', 'Male', 'inativo', 'Colorado');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Jill Gaine', 23841473423, '1960-07-05', 'Male', 'ativo', 'Galant');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Gerome Father', 51087857014, '1958-11-08', 'Male', 'ativo', 'Galant');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Connor Billitteri', 14842139155, '2001-05-13', 'Female', 'ativo', 'Cooper Clubman');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Forester Thay', 81416363792, '1981-11-05', 'Male', 'ativo', 'DBS');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Cahra Destouche', 72562698203, '2014-02-16', 'Male', 'ativo', 'RX');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Pooh Lanphier', 81830663614, '2004-07-24', 'Male', 'inativo', 'G-Class');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Teressa Hearl', 65864226087, '1991-01-18', 'Male', 'ativo', 'Mazdaspeed 3');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Cull Clewlow', 27629934325, '1967-03-23', 'Male', 'ativo', 'ES');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Corty Cameli', 81562771590, '1963-04-17', 'Male', 'inativo', 'Pajero');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Lita Rickwood', 21886068931, '1977-09-05', 'Female', 'inativo', 'F350');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Fernando Langfield', 92246737641, '1972-05-21', 'Female', 'inativo', 'LeSabre');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Riane Spiniello', 6770857271, '1950-06-16', 'Female', 'inativo', 'E-Class');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Theressa Stanlake', 48163137551, '1997-04-17', 'Female', 'ativo', 'Accent');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Erie O''Caine', 39186968917, '1993-11-14', 'Male', 'inativo', 'Reliant');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Cloe Pickance', 53394458453, '1957-11-11', 'Male', 'ativo', 'Passport');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Lew De Blasi', 97506869754, '1958-05-01', 'Male', 'inativo', 'EXP');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Oralie Bourthoumieux', 32551284351, '2003-03-04', 'Female', 'ativo', 'Mazda6');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Aubrey Morfell', 16129432525, '2011-03-27', 'Male', 'inativo', 'Type 2');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Fee Issacov', 3268373062, '1979-05-30', 'Male', 'inativo', 'Mustang');
insert into motoristas (nome, cpf, nascimento, sexo, status, modelo) values ('Harp Heinritz', 96286771501, '2012-05-23', 'Male', 'inativo', 'Ram 3500');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Darill Giroldo', 3466938435, '1985-08-28', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Rhetta Higginbottam', 76000134748, '1978-05-15', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Stormi Attoe', 10156047446, '1996-11-25', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Katlin Paolucci', 98094976677, '2002-03-02', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Jamill Dake', 22714934319, '1970-06-29', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Baxie McGraw', 49828862706, '1996-12-22', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Bondie Botham', 58071675587, '2016-01-24', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Homere Thayre', 93045265110, '1992-10-24', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Sarine Ratcliffe', 64649565604, '1999-03-21', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Elspeth Jedrzejewsky', 39036876804, '1950-03-14', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Daveen Revey', 47109136463, '2012-08-10', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Karly Coopman', 99835691125, '1958-08-06', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Rowan Frude', 94540139135, '1960-09-25', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Madlin Coventry', 33457970112, '1986-08-27', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Cynthie Duckering', 3568377659, '1953-06-03', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Annis MacGillavery', 57545195310, '1967-09-09', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Newton Bidder', 21864418546, '1980-07-19', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Dale Sheehy', 89825025864, '1980-07-04', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Daniele Ziems', 70326007504, '2000-05-14', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Tallulah Tellenbrook', 67844400512, '1983-10-22', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Madalena MacGilfoyle', 92983699551, '1965-04-10', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Devin Pymar', 71882234662, '2006-07-25', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Jo-anne Lifsey', 5178312928, '1952-06-19', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Camella Maughan', 95846969734, '2012-07-15', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Helsa Bradlaugh', 3750216157, '1992-05-05', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Konstance Wetherhead', 93138204457, '1977-02-04', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Dion Pohlke', 76365067232, '1983-05-26', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Geno Crosgrove', 10389707287, '2000-02-16', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Tynan Saltrese', 48310467529, '1967-10-14', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Beatrix Gilardone', 68333428312, '1956-07-22', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Cazzie Bake', 89462624463, '1990-01-01', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Adara Dood', 55574107286, '1961-11-20', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Care Karpe', 43996364121, '1958-07-14', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Jordan McGurgan', 8404376902, '1956-09-22', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Aldis Navarijo', 69285812649, '2009-07-09', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Taffy Wolseley', 19735969072, '1982-04-20', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Calley Ritzman', 96065755879, '2005-01-28', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Lorens Ridhole', 47132796555, '1970-06-17', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Cordy Cornier', 96683611038, '2010-01-25', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Jerrie Hemshall', 81257459267, '1961-09-19', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Dacey Durtnall', 17267865460, '1963-04-28', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Lezley Gude', 75294971054, '1954-07-09', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Lyndel McLachlan', 3366528965, '1995-04-15', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Chelsey Soans', 28224346018, '1986-10-17', 'Female');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Faina Atlee', 38672856947, '2000-10-13', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Riordan Bernardeau', 23058214524, '1950-04-26', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Claybourne Wenzel', 61759727960, '2015-01-12', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Dido O''Donnelly', 34099575573, '1964-11-08', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Wilburt Riatt', 24076511054, '1993-04-14', 'Male');
insert into passageiros (nome, cpf, nascimento, sexo) values ('Anastasie Jeayes', 14172324823, '1999-08-01', 'Male');
insert into corridas (cpf_mot,cpf_pas,valor) values (37734543937,3466938435,15.1),(47174147878,10156047446,22.20),(97188192438,93045265110,45.95);