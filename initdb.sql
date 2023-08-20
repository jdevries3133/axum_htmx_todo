create extension if not exists "uuid-ossp";

-- Ensure the database and schema names here match the databaes and schema
-- name in the `.env` file.
create database todo;
create schema todo;
\c todo;


create table item(
    id serial primary key,
    title varchar(255) not null,
    is_completed boolean not null default false
);

insert into item (title, is_completed) values
    ('do the thing 2', false),
    ('do the thing 3', false),
    ('do the thing 4', false),
    ('do the thing 5', false),
    ('do the thing 6', false),
    ('do the thing 7', false),
    ('do the thing 8', false),
    ('do the thing 9', false),
    ('do the thing 10', false),
    ('do the thing 11', false),
    ('do the thing 12', false),
    ('do the thing 13', false),
    ('do the thing 14', false),
    ('do the thing 15', false),
    ('do the thing 16', false),
    ('do the thing 17', false),
    ('do the thing 18', false),
    ('do the thing 19', false),
    ('do the thing 20', false),
    ('do the thing 21', false),
    ('do the thing 22', false),
    ('do the thing 23', false),
    ('do the thing 24', false),
    ('do the thing 25', false),
    ('do the thing 26', false),
    ('do the thing 27', false),
    ('do the thing 28', false),
    ('do the thing 29', false),
    ('do the thing 30', false),
    ('do the thing 31', false),
    ('do the thing 32', false),
    ('do the thing 33', false),
    ('do the thing 34', false),
    ('do the thing 35', false),
    ('do the thing 36', false),
    ('do the thing 37', false),
    ('do the thing 38', false),
    ('do the thing 39', false),
    ('do the thing 40', false),
    ('do the thing 41', false),
    ('do the thing 42', false),
    ('do the thing 43', false),
    ('do the thing 44', false),
    ('do the thing 45', false),
    ('do the thing 46', false),
    ('do the thing 47', false),
    ('do the thing 48', false),
    ('do the thing 49', false),
    ('do the thing 50', false),
    ('do the thing 51', false),
    ('do the thing 52', false),
    ('do the thing 53', false),
    ('do the thing 54', false),
    ('do the thing 55', false),
    ('do the thing 56', false),
    ('do the thing 57', false),
    ('do the thing 58', false),
    ('do the thing 59', false),
    ('do the thing 60', false),
    ('do the thing 61', false),
    ('do the thing 62', false),
    ('do the thing 63', false),
    ('do the thing 64', false),
    ('do the thing 65', false),
    ('do the thing 66', false),
    ('do the thing 67', false),
    ('do the thing 68', false),
    ('do the thing 69', false),
    ('do the thing 70', false),
    ('do the thing 71', false),
    ('do the thing 72', false),
    ('do the thing 73', false),
    ('do the thing 74', false),
    ('do the thing 75', false),
    ('do the thing 76', false),
    ('do the thing 77', false),
    ('do the thing 78', false),
    ('do the thing 79', false),
    ('do the thing 80', false),
    ('do the thing 81', false),
    ('do the thing 82', false),
    ('do the thing 83', false),
    ('do the thing 84', false),
    ('do the thing 85', false),
    ('do the thing 86', false),
    ('do the thing 87', false),
    ('do the thing 88', false),
    ('do the thing 89', false),
    ('do the thing 90', false),
    ('do the thing 91', false),
    ('do the thing 92', false),
    ('do the thing 93', false),
    ('do the thing 94', false),
    ('do the thing 95', false),
    ('do the thing 96', false),
    ('do the thing 97', false),
    ('do the thing 98', false),
    ('do the thing 99', false),
    ('do the thing 100', false),
    ('do the thing 101', false),
    ('do the thing 102', false),
    ('do the thing 103', false),
    ('do the thing 104', false),
    ('do the thing 105', false),
    ('do the thing 106', false),
    ('do the thing 107', false),
    ('do the thing 108', false),
    ('do the thing 109', false),
    ('do the thing 110', false),
    ('do the thing 111', false),
    ('do the thing 112', false),
    ('do the thing 113', false),
    ('do the thing 114', false),
    ('do the thing 115', false),
    ('do the thing 116', false),
    ('do the thing 117', false),
    ('do the thing 118', false),
    ('do the thing 119', false),
    ('do the thing 120', false),
    ('do the thing 121', false),
    ('do the thing 122', false),
    ('do the thing 123', false),
    ('do the thing 124', false),
    ('do the thing 125', false),
    ('do the thing 126', false),
    ('do the thing 127', false),
    ('do the thing 128', false),
    ('do the thing 129', false),
    ('do the thing 130', false),
    ('do the thing 131', false),
    ('do the thing 132', false),
    ('do the thing 133', false),
    ('do the thing 134', false),
    ('do the thing 135', false),
    ('do the thing 136', false),
    ('do the thing 137', false),
    ('do the thing 138', false),
    ('do the thing 139', false),
    ('do the thing 140', false),
    ('do the thing 141', false),
    ('do the thing 142', false),
    ('do the thing 143', false),
    ('do the thing 144', false),
    ('do the thing 145', false),
    ('do the thing 146', false),
    ('do the thing 147', false),
    ('do the thing 148', false),
    ('do the thing 149', false),
    ('do the thing 150', false),
    ('do the thing 151', false),
    ('do the thing 152', false),
    ('do the thing 153', false),
    ('do the thing 154', false),
    ('do the thing 155', false),
    ('do the thing 156', false),
    ('do the thing 157', false),
    ('do the thing 158', false),
    ('do the thing 159', false),
    ('do the thing 160', false),
    ('do the thing 161', false),
    ('do the thing 162', false),
    ('do the thing 163', false),
    ('do the thing 164', false),
    ('do the thing 165', false),
    ('do the thing 166', false),
    ('do the thing 167', false),
    ('do the thing 168', false),
    ('do the thing 169', false),
    ('do the thing 170', false),
    ('do the thing 171', false),
    ('do the thing 172', false),
    ('do the thing 173', false),
    ('do the thing 174', false),
    ('do the thing 175', false),
    ('do the thing 176', false),
    ('do the thing 177', false),
    ('do the thing 178', false),
    ('do the thing 179', false),
    ('do the thing 180', false),
    ('do the thing 181', false),
    ('do the thing 182', false),
    ('do the thing 183', false),
    ('do the thing 184', false),
    ('do the thing 185', false),
    ('do the thing 186', false),
    ('do the thing 187', false),
    ('do the thing 188', false),
    ('do the thing 189', false),
    ('do the thing 190', false),
    ('do the thing 191', false),
    ('do the thing 192', false),
    ('do the thing 193', false),
    ('do the thing 194', false),
    ('do the thing 195', false),
    ('do the thing 196', false),
    ('do the thing 197', false),
    ('do the thing 198', false),
    ('do the thing 199', false),
    ('do the thing 200', false),
    ('do the thing 201', false),
    ('do the thing 202', false),
    ('do the thing 203', false),
    ('do the thing 204', false),
    ('do the thing 205', false),
    ('do the thing 206', false),
    ('do the thing 207', false),
    ('do the thing 208', false),
    ('do the thing 209', false),
    ('do the thing 210', false),
    ('do the thing 211', false),
    ('do the thing 212', false),
    ('do the thing 213', false),
    ('do the thing 214', false),
    ('do the thing 215', false),
    ('do the thing 216', false),
    ('do the thing 217', false),
    ('do the thing 218', false),
    ('do the thing 219', false),
    ('do the thing 220', false),
    ('do the thing 221', false),
    ('do the thing 222', false),
    ('do the thing 223', false),
    ('do the thing 224', false),
    ('do the thing 225', false),
    ('do the thing 226', false),
    ('do the thing 227', false),
    ('do the thing 228', false),
    ('do the thing 229', false),
    ('do the thing 230', false),
    ('do the thing 231', false),
    ('do the thing 232', false),
    ('do the thing 233', false),
    ('do the thing 234', false),
    ('do the thing 235', false),
    ('do the thing 236', false),
    ('do the thing 237', false),
    ('do the thing 238', false),
    ('do the thing 239', false),
    ('do the thing 240', false),
    ('do the thing 241', false),
    ('do the thing 242', false),
    ('do the thing 243', false),
    ('do the thing 244', false),
    ('do the thing 245', false),
    ('do the thing 246', false),
    ('do the thing 247', false),
    ('do the thing 248', false),
    ('do the thing 249', false),
    ('do the thing 250', false),
    ('do the thing 251', false),
    ('do the thing 252', false),
    ('do the thing 253', false),
    ('do the thing 254', false),
    ('do the thing 255', false),
    ('do the thing 256', false),
    ('do the thing 257', false),
    ('do the thing 258', false),
    ('do the thing 259', false),
    ('do the thing 260', false),
    ('do the thing 261', false),
    ('do the thing 262', false),
    ('do the thing 263', false),
    ('do the thing 264', false),
    ('do the thing 265', false),
    ('do the thing 266', false),
    ('do the thing 267', false),
    ('do the thing 268', false),
    ('do the thing 269', false),
    ('do the thing 270', false),
    ('do the thing 271', false),
    ('do the thing 272', false),
    ('do the thing 273', false),
    ('do the thing 274', false),
    ('do the thing 275', false),
    ('do the thing 276', false),
    ('do the thing 277', false),
    ('do the thing 278', false),
    ('do the thing 279', false),
    ('do the thing 280', false),
    ('do the thing 281', false),
    ('do the thing 282', false),
    ('do the thing 283', false),
    ('do the thing 284', false),
    ('do the thing 285', false),
    ('do the thing 286', false),
    ('do the thing 287', false),
    ('do the thing 288', false),
    ('do the thing 289', false),
    ('do the thing 290', false),
    ('do the thing 291', false),
    ('do the thing 292', false),
    ('do the thing 293', false),
    ('do the thing 294', false),
    ('do the thing 295', false),
    ('do the thing 296', false),
    ('do the thing 297', false),
    ('do the thing 298', false),
    ('do the thing 299', false),
    ('do the thing 300', false),
    ('do the thing 301', false),
    ('do the thing 302', false),
    ('do the thing 303', false),
    ('do the thing 304', false),
    ('do the thing 305', false),
    ('do the thing 306', false),
    ('do the thing 307', false),
    ('do the thing 308', false),
    ('do the thing 309', false),
    ('do the thing 310', false),
    ('do the thing 311', false),
    ('do the thing 312', false),
    ('do the thing 313', false),
    ('do the thing 314', false),
    ('do the thing 315', false),
    ('do the thing 316', false),
    ('do the thing 317', false),
    ('do the thing 318', false),
    ('do the thing 319', false),
    ('do the thing 320', false),
    ('do the thing 321', false),
    ('do the thing 322', false),
    ('do the thing 323', false),
    ('do the thing 324', false),
    ('do the thing 325', false),
    ('do the thing 326', false),
    ('do the thing 327', false),
    ('do the thing 328', false),
    ('do the thing 329', false),
    ('do the thing 330', false),
    ('do the thing 331', false),
    ('do the thing 332', false),
    ('do the thing 333', false),
    ('do the thing 334', false),
    ('do the thing 335', false),
    ('do the thing 336', false),
    ('do the thing 337', false),
    ('do the thing 338', false),
    ('do the thing 339', false),
    ('do the thing 340', false),
    ('do the thing 341', false),
    ('do the thing 342', false),
    ('do the thing 343', false),
    ('do the thing 344', false),
    ('do the thing 345', false),
    ('do the thing 346', false),
    ('do the thing 347', false),
    ('do the thing 348', false),
    ('do the thing 349', false),
    ('do the thing 350', false),
    ('do the thing 351', false),
    ('do the thing 352', false),
    ('do the thing 353', false),
    ('do the thing 354', false),
    ('do the thing 355', false),
    ('do the thing 356', false),
    ('do the thing 357', false),
    ('do the thing 358', false),
    ('do the thing 359', false),
    ('do the thing 360', false),
    ('do the thing 361', false),
    ('do the thing 362', false),
    ('do the thing 363', false),
    ('do the thing 364', false),
    ('do the thing 365', false),
    ('do the thing 366', false),
    ('do the thing 367', false),
    ('do the thing 368', false),
    ('do the thing 369', false),
    ('do the thing 370', false),
    ('do the thing 371', false),
    ('do the thing 372', false),
    ('do the thing 373', false),
    ('do the thing 374', false),
    ('do the thing 375', false),
    ('do the thing 376', false),
    ('do the thing 377', false),
    ('do the thing 378', false),
    ('do the thing 379', false),
    ('do the thing 380', false),
    ('do the thing 381', false),
    ('do the thing 382', false),
    ('do the thing 383', false),
    ('do the thing 384', false),
    ('do the thing 385', false),
    ('do the thing 386', false),
    ('do the thing 387', false),
    ('do the thing 388', false),
    ('do the thing 389', false),
    ('do the thing 390', false),
    ('do the thing 391', false),
    ('do the thing 392', false),
    ('do the thing 393', false),
    ('do the thing 394', false),
    ('do the thing 395', false),
    ('do the thing 396', false),
    ('do the thing 397', false),
    ('do the thing 398', false),
    ('do the thing 399', false),
    ('do the thing 400', false),
    ('do the thing 401', false),
    ('do the thing 402', false),
    ('do the thing 403', false),
    ('do the thing 404', false),
    ('do the thing 405', false),
    ('do the thing 406', false),
    ('do the thing 407', false),
    ('do the thing 408', false),
    ('do the thing 409', false),
    ('do the thing 410', false),
    ('do the thing 411', false),
    ('do the thing 412', false),
    ('do the thing 413', false),
    ('do the thing 414', false),
    ('do the thing 415', false),
    ('do the thing 416', false),
    ('do the thing 417', false),
    ('do the thing 418', false),
    ('do the thing 419', false),
    ('do the thing 420', false),
    ('do the thing 421', false),
    ('do the thing 422', false),
    ('do the thing 423', false),
    ('do the thing 424', false),
    ('do the thing 425', false),
    ('do the thing 426', false),
    ('do the thing 427', false),
    ('do the thing 428', false),
    ('do the thing 429', false),
    ('do the thing 430', false),
    ('do the thing 431', false),
    ('do the thing 432', false),
    ('do the thing 433', false),
    ('do the thing 434', false),
    ('do the thing 435', false),
    ('do the thing 436', false),
    ('do the thing 437', false),
    ('do the thing 438', false),
    ('do the thing 439', false),
    ('do the thing 440', false),
    ('do the thing 441', false),
    ('do the thing 442', false),
    ('do the thing 443', false),
    ('do the thing 444', false),
    ('do the thing 445', false),
    ('do the thing 446', false),
    ('do the thing 447', false),
    ('do the thing 448', false),
    ('do the thing 449', false),
    ('do the thing 450', false),
    ('do the thing 451', false),
    ('do the thing 452', false),
    ('do the thing 453', false),
    ('do the thing 454', false),
    ('do the thing 455', false),
    ('do the thing 456', false),
    ('do the thing 457', false),
    ('do the thing 458', false),
    ('do the thing 459', false),
    ('do the thing 460', false),
    ('do the thing 461', false),
    ('do the thing 462', false),
    ('do the thing 463', false),
    ('do the thing 464', false),
    ('do the thing 465', false),
    ('do the thing 466', false),
    ('do the thing 467', false),
    ('do the thing 468', false),
    ('do the thing 469', false),
    ('do the thing 470', false),
    ('do the thing 471', false),
    ('do the thing 472', false),
    ('do the thing 473', false),
    ('do the thing 474', false),
    ('do the thing 475', false),
    ('do the thing 476', false),
    ('do the thing 477', false),
    ('do the thing 478', false),
    ('do the thing 479', false),
    ('do the thing 480', false),
    ('do the thing 481', false),
    ('do the thing 482', false),
    ('do the thing 483', false),
    ('do the thing 484', false),
    ('do the thing 485', false),
    ('do the thing 486', false),
    ('do the thing 487', false),
    ('do the thing 488', false),
    ('do the thing 489', false),
    ('do the thing 490', false),
    ('do the thing 491', false),
    ('do the thing 492', false),
    ('do the thing 493', false),
    ('do the thing 494', false),
    ('do the thing 495', false),
    ('do the thing 496', false),
    ('do the thing 497', false),
    ('do the thing 498', false),
    ('do the thing 499', false),
    ('do the thing 500', false),
    ('do the thing 501', false),
    ('do the thing 502', false),
    ('do the thing 503', false),
    ('do the thing 504', false),
    ('do the thing 505', false),
    ('do the thing 506', false),
    ('do the thing 507', false),
    ('do the thing 508', false),
    ('do the thing 509', false),
    ('do the thing 510', false),
    ('do the thing 511', false),
    ('do the thing 512', false),
    ('do the thing 513', false),
    ('do the thing 514', false),
    ('do the thing 515', false),
    ('do the thing 516', false),
    ('do the thing 517', false),
    ('do the thing 518', false),
    ('do the thing 519', false),
    ('do the thing 520', false),
    ('do the thing 521', false),
    ('do the thing 522', false),
    ('do the thing 523', false),
    ('do the thing 524', false),
    ('do the thing 525', false),
    ('do the thing 526', false),
    ('do the thing 527', false),
    ('do the thing 528', false),
    ('do the thing 529', false),
    ('do the thing 530', false),
    ('do the thing 531', false),
    ('do the thing 532', false),
    ('do the thing 533', false),
    ('do the thing 534', false),
    ('do the thing 535', false),
    ('do the thing 536', false),
    ('do the thing 537', false),
    ('do the thing 538', false),
    ('do the thing 539', false),
    ('do the thing 540', false),
    ('do the thing 541', false),
    ('do the thing 542', false),
    ('do the thing 543', false),
    ('do the thing 544', false),
    ('do the thing 545', false),
    ('do the thing 546', false),
    ('do the thing 547', false),
    ('do the thing 548', false),
    ('do the thing 549', false),
    ('do the thing 550', false),
    ('do the thing 551', false),
    ('do the thing 552', false),
    ('do the thing 553', false),
    ('do the thing 554', false),
    ('do the thing 555', false),
    ('do the thing 556', false),
    ('do the thing 557', false),
    ('do the thing 558', false),
    ('do the thing 559', false),
    ('do the thing 560', false),
    ('do the thing 561', false),
    ('do the thing 562', false),
    ('do the thing 563', false),
    ('do the thing 564', false),
    ('do the thing 565', false),
    ('do the thing 566', false),
    ('do the thing 567', false),
    ('do the thing 568', false),
    ('do the thing 569', false),
    ('do the thing 570', false),
    ('do the thing 571', false),
    ('do the thing 572', false),
    ('do the thing 573', false),
    ('do the thing 574', false),
    ('do the thing 575', false),
    ('do the thing 576', false),
    ('do the thing 577', false),
    ('do the thing 578', false),
    ('do the thing 579', false),
    ('do the thing 580', false),
    ('do the thing 581', false),
    ('do the thing 582', false),
    ('do the thing 583', false),
    ('do the thing 584', false),
    ('do the thing 585', false),
    ('do the thing 586', false),
    ('do the thing 587', false),
    ('do the thing 588', false),
    ('do the thing 589', false),
    ('do the thing 590', false),
    ('do the thing 591', false),
    ('do the thing 592', false),
    ('do the thing 593', false),
    ('do the thing 594', false),
    ('do the thing 595', false),
    ('do the thing 596', false),
    ('do the thing 597', false),
    ('do the thing 598', false),
    ('do the thing 599', false),
    ('do the thing 600', false),
    ('do the thing 601', false),
    ('do the thing 602', false),
    ('do the thing 603', false),
    ('do the thing 604', false),
    ('do the thing 605', false),
    ('do the thing 606', false),
    ('do the thing 607', false),
    ('do the thing 608', false),
    ('do the thing 609', false),
    ('do the thing 610', false),
    ('do the thing 611', false),
    ('do the thing 612', false),
    ('do the thing 613', false),
    ('do the thing 614', false),
    ('do the thing 615', false),
    ('do the thing 616', false),
    ('do the thing 617', false),
    ('do the thing 618', false),
    ('do the thing 619', false),
    ('do the thing 620', false),
    ('do the thing 621', false),
    ('do the thing 622', false),
    ('do the thing 623', false),
    ('do the thing 624', false),
    ('do the thing 625', false),
    ('do the thing 626', false),
    ('do the thing 627', false),
    ('do the thing 628', false),
    ('do the thing 629', false),
    ('do the thing 630', false),
    ('do the thing 631', false),
    ('do the thing 632', false),
    ('do the thing 633', false),
    ('do the thing 634', false),
    ('do the thing 635', false),
    ('do the thing 636', false),
    ('do the thing 637', false),
    ('do the thing 638', false),
    ('do the thing 639', false),
    ('do the thing 640', false),
    ('do the thing 641', false),
    ('do the thing 642', false),
    ('do the thing 643', false),
    ('do the thing 644', false),
    ('do the thing 645', false),
    ('do the thing 646', false),
    ('do the thing 647', false),
    ('do the thing 648', false),
    ('do the thing 649', false),
    ('do the thing 650', false),
    ('do the thing 651', false),
    ('do the thing 652', false),
    ('do the thing 653', false),
    ('do the thing 654', false),
    ('do the thing 655', false),
    ('do the thing 656', false),
    ('do the thing 657', false),
    ('do the thing 658', false),
    ('do the thing 659', false),
    ('do the thing 660', false),
    ('do the thing 661', false),
    ('do the thing 662', false),
    ('do the thing 663', false),
    ('do the thing 664', false),
    ('do the thing 665', false),
    ('do the thing 666', false),
    ('do the thing 667', false),
    ('do the thing 668', false),
    ('do the thing 669', false),
    ('do the thing 670', false),
    ('do the thing 671', false),
    ('do the thing 672', false),
    ('do the thing 673', false),
    ('do the thing 674', false),
    ('do the thing 675', false),
    ('do the thing 676', false),
    ('do the thing 677', false),
    ('do the thing 678', false),
    ('do the thing 679', false),
    ('do the thing 680', false),
    ('do the thing 681', false),
    ('do the thing 682', false),
    ('do the thing 683', false),
    ('do the thing 684', false),
    ('do the thing 685', false),
    ('do the thing 686', false),
    ('do the thing 687', false),
    ('do the thing 688', false),
    ('do the thing 689', false),
    ('do the thing 690', false),
    ('do the thing 691', false),
    ('do the thing 692', false),
    ('do the thing 693', false),
    ('do the thing 694', false),
    ('do the thing 695', false),
    ('do the thing 696', false),
    ('do the thing 697', false),
    ('do the thing 698', false),
    ('do the thing 699', false),
    ('do the thing 700', false),
    ('do the thing 701', false),
    ('do the thing 702', false),
    ('do the thing 703', false),
    ('do the thing 704', false),
    ('do the thing 705', false),
    ('do the thing 706', false),
    ('do the thing 707', false),
    ('do the thing 708', false),
    ('do the thing 709', false),
    ('do the thing 710', false),
    ('do the thing 711', false),
    ('do the thing 712', false),
    ('do the thing 713', false),
    ('do the thing 714', false),
    ('do the thing 715', false),
    ('do the thing 716', false),
    ('do the thing 717', false),
    ('do the thing 718', false),
    ('do the thing 719', false),
    ('do the thing 720', false),
    ('do the thing 721', false),
    ('do the thing 722', false),
    ('do the thing 723', false),
    ('do the thing 724', false),
    ('do the thing 725', false),
    ('do the thing 726', false),
    ('do the thing 727', false),
    ('do the thing 728', false),
    ('do the thing 729', false),
    ('do the thing 730', false),
    ('do the thing 731', false),
    ('do the thing 732', false),
    ('do the thing 733', false),
    ('do the thing 734', false),
    ('do the thing 735', false),
    ('do the thing 736', false),
    ('do the thing 737', false),
    ('do the thing 738', false),
    ('do the thing 739', false),
    ('do the thing 740', false),
    ('do the thing 741', false),
    ('do the thing 742', false),
    ('do the thing 743', false),
    ('do the thing 744', false),
    ('do the thing 745', false),
    ('do the thing 746', false),
    ('do the thing 747', false),
    ('do the thing 748', false),
    ('do the thing 749', false),
    ('do the thing 750', false),
    ('do the thing 751', false),
    ('do the thing 752', false),
    ('do the thing 753', false),
    ('do the thing 754', false),
    ('do the thing 755', false),
    ('do the thing 756', false),
    ('do the thing 757', false),
    ('do the thing 758', false),
    ('do the thing 759', false),
    ('do the thing 760', false),
    ('do the thing 761', false),
    ('do the thing 762', false),
    ('do the thing 763', false),
    ('do the thing 764', false),
    ('do the thing 765', false),
    ('do the thing 766', false),
    ('do the thing 767', false),
    ('do the thing 768', false),
    ('do the thing 769', false),
    ('do the thing 770', false),
    ('do the thing 771', false),
    ('do the thing 772', false),
    ('do the thing 773', false),
    ('do the thing 774', false),
    ('do the thing 775', false),
    ('do the thing 776', false),
    ('do the thing 777', false),
    ('do the thing 778', false),
    ('do the thing 779', false),
    ('do the thing 780', false),
    ('do the thing 781', false),
    ('do the thing 782', false),
    ('do the thing 783', false),
    ('do the thing 784', false),
    ('do the thing 785', false),
    ('do the thing 786', false),
    ('do the thing 787', false),
    ('do the thing 788', false),
    ('do the thing 789', false),
    ('do the thing 790', false),
    ('do the thing 791', false),
    ('do the thing 792', false),
    ('do the thing 793', false),
    ('do the thing 794', false),
    ('do the thing 795', false),
    ('do the thing 796', false),
    ('do the thing 797', false),
    ('do the thing 798', false),
    ('do the thing 799', false),
    ('do the thing 800', false),
    ('do the thing 801', false),
    ('do the thing 802', false),
    ('do the thing 803', false),
    ('do the thing 804', false),
    ('do the thing 805', false),
    ('do the thing 806', false),
    ('do the thing 807', false),
    ('do the thing 808', false),
    ('do the thing 809', false),
    ('do the thing 810', false),
    ('do the thing 811', false),
    ('do the thing 812', false),
    ('do the thing 813', false),
    ('do the thing 814', false),
    ('do the thing 815', false),
    ('do the thing 816', false),
    ('do the thing 817', false),
    ('do the thing 818', false),
    ('do the thing 819', false),
    ('do the thing 820', false),
    ('do the thing 821', false),
    ('do the thing 822', false),
    ('do the thing 823', false),
    ('do the thing 824', false),
    ('do the thing 825', false),
    ('do the thing 826', false),
    ('do the thing 827', false),
    ('do the thing 828', false),
    ('do the thing 829', false),
    ('do the thing 830', false),
    ('do the thing 831', false),
    ('do the thing 832', false),
    ('do the thing 833', false),
    ('do the thing 834', false),
    ('do the thing 835', false),
    ('do the thing 836', false),
    ('do the thing 837', false),
    ('do the thing 838', false),
    ('do the thing 839', false),
    ('do the thing 840', false),
    ('do the thing 841', false),
    ('do the thing 842', false),
    ('do the thing 843', false),
    ('do the thing 844', false),
    ('do the thing 845', false),
    ('do the thing 846', false),
    ('do the thing 847', false),
    ('do the thing 848', false),
    ('do the thing 849', false),
    ('do the thing 850', false),
    ('do the thing 851', false),
    ('do the thing 852', false),
    ('do the thing 853', false),
    ('do the thing 854', false),
    ('do the thing 855', false),
    ('do the thing 856', false),
    ('do the thing 857', false),
    ('do the thing 858', false),
    ('do the thing 859', false),
    ('do the thing 860', false),
    ('do the thing 861', false),
    ('do the thing 862', false),
    ('do the thing 863', false),
    ('do the thing 864', false),
    ('do the thing 865', false),
    ('do the thing 866', false),
    ('do the thing 867', false),
    ('do the thing 868', false),
    ('do the thing 869', false),
    ('do the thing 870', false),
    ('do the thing 871', false),
    ('do the thing 872', false),
    ('do the thing 873', false),
    ('do the thing 874', false),
    ('do the thing 875', false),
    ('do the thing 876', false),
    ('do the thing 877', false),
    ('do the thing 878', false),
    ('do the thing 879', false),
    ('do the thing 880', false),
    ('do the thing 881', false),
    ('do the thing 882', false),
    ('do the thing 883', false),
    ('do the thing 884', false),
    ('do the thing 885', false),
    ('do the thing 886', false),
    ('do the thing 887', false),
    ('do the thing 888', false),
    ('do the thing 889', false),
    ('do the thing 890', false),
    ('do the thing 891', false),
    ('do the thing 892', false),
    ('do the thing 893', false),
    ('do the thing 894', false),
    ('do the thing 895', false),
    ('do the thing 896', false),
    ('do the thing 897', false),
    ('do the thing 898', false),
    ('do the thing 899', false),
    ('do the thing 900', false),
    ('do the thing 901', false),
    ('do the thing 902', false),
    ('do the thing 903', false),
    ('do the thing 904', false),
    ('do the thing 905', false),
    ('do the thing 906', false),
    ('do the thing 907', false),
    ('do the thing 908', false),
    ('do the thing 909', false),
    ('do the thing 910', false),
    ('do the thing 911', false),
    ('do the thing 912', false),
    ('do the thing 913', false),
    ('do the thing 914', false),
    ('do the thing 915', false),
    ('do the thing 916', false),
    ('do the thing 917', false),
    ('do the thing 918', false),
    ('do the thing 919', false),
    ('do the thing 920', false),
    ('do the thing 921', false),
    ('do the thing 922', false),
    ('do the thing 923', false),
    ('do the thing 924', false),
    ('do the thing 925', false),
    ('do the thing 926', false),
    ('do the thing 927', false),
    ('do the thing 928', false),
    ('do the thing 929', false),
    ('do the thing 930', false),
    ('do the thing 931', false),
    ('do the thing 932', false),
    ('do the thing 933', false),
    ('do the thing 934', false),
    ('do the thing 935', false),
    ('do the thing 936', false),
    ('do the thing 937', false),
    ('do the thing 938', false),
    ('do the thing 939', false),
    ('do the thing 940', false),
    ('do the thing 941', false),
    ('do the thing 942', false),
    ('do the thing 943', false),
    ('do the thing 944', false),
    ('do the thing 945', false),
    ('do the thing 946', false),
    ('do the thing 947', false),
    ('do the thing 948', false),
    ('do the thing 949', false),
    ('do the thing 950', false),
    ('do the thing 951', false),
    ('do the thing 952', false),
    ('do the thing 953', false),
    ('do the thing 954', false),
    ('do the thing 955', false),
    ('do the thing 956', false),
    ('do the thing 957', false),
    ('do the thing 958', false),
    ('do the thing 959', false),
    ('do the thing 960', false),
    ('do the thing 961', false),
    ('do the thing 962', false),
    ('do the thing 963', false),
    ('do the thing 964', false),
    ('do the thing 965', false),
    ('do the thing 966', false),
    ('do the thing 967', false),
    ('do the thing 968', false),
    ('do the thing 969', false),
    ('do the thing 970', false),
    ('do the thing 971', false),
    ('do the thing 972', false),
    ('do the thing 973', false),
    ('do the thing 974', false),
    ('do the thing 975', false),
    ('do the thing 976', false),
    ('do the thing 977', false),
    ('do the thing 978', false),
    ('do the thing 979', false),
    ('do the thing 980', false),
    ('do the thing 981', false),
    ('do the thing 982', false),
    ('do the thing 983', false),
    ('do the thing 984', false),
    ('do the thing 985', false),
    ('do the thing 986', false),
    ('do the thing 987', false),
    ('do the thing 988', false),
    ('do the thing 989', false),
    ('do the thing 990', false),
    ('do the thing 991', false),
    ('do the thing 992', false),
    ('do the thing 993', false),
    ('do the thing 994', false),
    ('do the thing 995', false),
    ('do the thing 996', false),
    ('do the thing 997', false),
    ('do the thing 998', false),
    ('do the thing 999', false),
    ('do the thing 1000', false),
    ('do the thing 1001', false),
    ('do the thing 1002', false),
    ('and the other thing is done', true)
;
