kane = User.create(name: 'Kane')
jack = User.create(name: 'Jack')

product_names = [
  'Dưỡng chất cải thiện làm sáng da La Roche Posay Pure Vitamin C10 30ml Xl',
  'Dầu gội khô hương hoa quyến rũ Girlz Only Party Nights 200ml',
  'Nước tẩy trang cho da nhạy cảm La Roche-Posay Micellar Water Ultra Sensitive Skin 200ml',
  'Gel tắm giúp làm sạch làm dịu bảo vệ da dành cho da nhạy cảm phù hợp cho trẻ em Lipikar Shower Gel La Roche-Posay 200ml.',
  'Kem dưỡng da giúp hỗ trợ quá trình tái tạo tự nhiên, giúp da săn chắc và đàn hồi La Roche Posay Hyalu B5 Cream 40ml',
  'Son Dưỡng giúp phục hồi độ ẩm & bảo vệ môi La Roche-Posay Cicaplast Lips 7.5ml',
  'Nước làm sạch sâu và tẩy trang da dầu nhạy cảm Micellar Water La Roche-Posay 200ml',
  'Nước làm sạch sâu tẩy trang cho da dầu nhạy cảm Effaclar Micellar Water Ultra La Roche-Posay 100ml',
  'Nước làm sạch sâu tẩy trang cho da dầu nhạy cảm La Roche-Posay Micellar Water Ultra 400ml',
  'Gel rửa mặt tạo bọt cho da dầu nhạy cảm La Roche-Posay 400ml',
  'Gel rửa mặt tạo bọt làm sạch dành cho da dầu nhạy cảm Effaclar Foaming Gel La Roche-Posay 50ml',
  'Nước khoáng giúp làm dịu & bảo vệ da La Roche-Posay Thermal Spring Water 300ml',
  'Nước xịt khoáng làm sạch và làm dịu cho da nhạy cảm La Roche-Posay Thermal Spring Water 150ml',
  'Kem dưỡng giúp làm dịu, làm mượt, làm mát & phục hồi da phù hợp cho trẻ em La Roche-Posay Cicaplast Baume B5 40ml',
  'Kem Dưỡng Dạng Gel giúp làm mờ sẹo, làm dịu,hỗ trợ quá trình phục hồi, tái tạo da phù hợp cho trẻ em La Roche-Posay 40ml',
  'Kem chống nắng không gây nhờn rít SPF50+ UVB UVA dành cho da nhạy cảm dễ kích ứng La Roche-Posay Anthelios XL Fluid 50ml',
  'Kem chống nắng giúp bảo vệ da dành cho da bóng dầu, dễ nổi mụn La Roche-Posay Anthelios Anti-Imperfection 50ml',
  'Kem chống nắng dạng sữa  dành cho trẻ em  SPF50+ UVB & UVA La Roche-Posay Anthelios Dermo Kid 100ml',
  'Kem chống nắng dạng Gel giúp làm sáng da và giúp cải thiện sắc tố da La Roche-Posay Uvidea XL Tone-up Light Cream 30ml',
  'Kem chống nắng dạng sữa lỏng nhẹ không nhờn rít La Roche-Posay Anthelios Invisible Fluid SPF 50+ 50ml',
]

product_names.each_with_index do |name, index|
  user_id = index.even? ? kane.id : jack.id

  price = rand(50..500) * 1000
  original_price = price + 50_000

  Product.create(name: name, price: price, original_price: original_price, user_id: user_id)
end
