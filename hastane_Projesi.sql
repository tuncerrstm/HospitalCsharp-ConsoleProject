USE [HastaneProje]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 26.12.2021 13:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[Bransid] [tinyint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 26.12.2021 13:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [tinyint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](10) NULL,
	[DoktorSoyad] [varchar](10) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Duyurular]    Script Date: 26.12.2021 13:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Duyurular](
	[Duyuruid] [smallint] IDENTITY(1,1) NOT NULL,
	[Duyuru] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 26.12.2021 13:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](10) NULL,
	[HastaSoyad] [varchar](10) NULL,
	[HastaTC] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](10) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 26.12.2021 13:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [int] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](10) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](20) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sekreter]    Script Date: 26.12.2021 13:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sekreter](
	[Sekreterid] [tinyint] IDENTITY(1,1) NOT NULL,
	[SekreterAdSoyad] [varchar](20) NULL,
	[SekreterTC] [char](11) NULL,
	[SekreterSifre] [varchar](10) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] ON 

INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (1, N'Dahiliye')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (2, N'Göz')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (3, N'Kulak Burun Boğaz')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (6, N'Kalp Cerrahisi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (5, N'Cilt Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (7, N'Ortopedi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (8, N'Diş Cerrahisi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (9, N'Kardiyoloji')
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (3, N'Mehmet', N'Duran', N'Dahiliye', N'33333333333', N'3333')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (4, N'Akın', N'Yıldız', N'Göz', N'11111111112', N'0011')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (6, N'Ahmet', N'Şener', N'Dahiliye', N'54545412487', N'2121')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (7, N'Şerif', N'Yılmaz', N'Göz', N'88888888888', N'6677')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (8, N'Serap', N'Yener', N'Ortopedi', N'84848484844', N'4321')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (9, N'Halil', N'Güç', N'Cilt Hastalıkları', N'64364364364', N'6432')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre]) VALUES (10, N'Ilgın', N'Denk', N'Diş Cerrahisi', N'00000011111', N'1111')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] ON 

INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (1, N'Saat 15:30 ''da acil personel toplantısı yapılacaktır. Bilginize...')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (2, N'Tüm hemşireler yeni giriş kartları için gişeye uğrayarak imzalarını atarak kartlarını almalıdır.')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (3, N'Bu bir deneme duyurusudur..')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (4, N'Önemli: Lütfen covid19 salgını sebebiyle mesafeyi korumaya dikkat edelim..')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (5, N'Merhaba arkadaşlar: Son covid varyantı nedeniyle tekrar önlemleri arttırma kararı aldık bilginize.')
INSERT [dbo].[Tbl_Duyurular] ([Duyuruid], [Duyuru]) VALUES (6, N'Merhaba arkadaşlar bugün toplantı vardır tüm personele duyurulur!')
SET IDENTITY_INSERT [dbo].[Tbl_Duyurular] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'Hakan', N'Sever', N'11111111111', N'(541) 245-7845', N'2222', N'Erkek')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (2, N'Ayşe', N'Öztürk', N'22222222222', N'(533) 333-2222', N'001144', N'Kadın')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (3, N'Müge', N'Rüstemoğlu', N'75757575757', N'(545) 563-5635', N'7575', N'Kadın')
INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (4, N'Güneş', N'Gür', N'33333333331', N'(132) 141-2413', N'3232', N'Kadın')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] ON 

INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1, N'23.10.2021', N'14:00', N'Dahiliye', N'Mehmet Duran', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (2, N'18.11.2021', N'16:15', N'Göz', N'Akın Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (3, N'28.10.2021', N'13:00', N'Dahiliye', N'Mehmet Duran', 1, N'11111111111', N'Karnımda ağrı var!')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (4, N'28.10.2021', N'14:00', N'Dahiliye', N'Mehmet Duran', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (6, N'29.11.2021', N'12:00', N'Göz', N'Akın Yıldız', 1, N'11111111111', N'Gözümde seğirme var.')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (5, N'11.11.2021', N'15:00', N'Dahiliye', N'Mehmet Duran', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (7, N'28.11.2021', N'14:00', N'Göz', N'Akın Yıldız', 1, N'11111111111', N'Gözüm Ağırıyor.')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (8, N'28.12.2021', N'13:00', N'Göz', N'Şerif Yılmaz', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (9, N'23.11.2021', N'16:40', N'Göz', N'Akın Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (10, N'26.12.2021', N'13:30', N'Ortopedi', N'Serap Yener', 1, N'75757575757', N'Sırt Ağrısı')
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] ON 

INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (1, N'Emel Öztürk', N'55555555555', N'5555')
INSERT [dbo].[Tbl_Sekreter] ([Sekreterid], [SekreterAdSoyad], [SekreterTC], [SekreterSifre]) VALUES (2, N'Ali Güneş', N'66666666666', N'6666')
SET IDENTITY_INSERT [dbo].[Tbl_Sekreter] OFF
ALTER TABLE [dbo].[Tbl_Randevular] ADD  CONSTRAINT [DF_Tbl_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
