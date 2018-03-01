class Importar
  def self.import(klass_name, file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[klass_name.column_name, spreadsheet.row(i)].transpose]
      movie = klass_name.new
      movie.attributes = row.to_hash
      movie.save!
    end
  end

  def self.open_spreadsheet(file)
    Roo::CSV.new(file.path, nil, :ignore)
  end
end
