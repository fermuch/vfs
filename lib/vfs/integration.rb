# -*- encoding : utf-8 -*-
class String
  def to_entry_on driver = nil
    path = self
    driver ||= Vfs.default_driver

    path = "./#{path}" unless path =~ /^[\/\.\~]/
    Vfs::Entry.new(driver, path).entry
  end
  alias_method :to_entry, :to_entry_on

  def to_file_on driver = nil
    to_entry_on(driver).file
  end
  alias_method :to_file, :to_file_on

  def to_dir_on driver = nil
    to_entry_on(driver).dir
  end
  alias_method :to_dir, :to_dir_on
end

class File
  def to_entry
    path.to_entry
  end

  def to_file
    path.to_file
  end
end
