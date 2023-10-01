CREATE DATABASE IF NOT EXISTS veggie_db;
USE veggie_db;
CREATE TABLE IF NOT EXISTS sayur (
  id_sayur INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nama_sayur VARCHAR(30) NOT NULL,
  gambar_sayur BLOB,
  tanggal_input DATETIME
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS pasar(
  id_pasar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  nama_pasar VARCHAR(30) NOT NULL,
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS deteksi (
  id_deteksi INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  id_sayur INT NOT NULL,
  id_pasar INT NOT NULL,
  hasil_deteksi VARCHAR(30),
  FOREIGN KEY (id_sayur) REFERENCES sayur(id_sayur),
  FOREIGN KEY (id_pasar) REFERENCES pasar(id_pasar)
) ENGINE = InnoDB;