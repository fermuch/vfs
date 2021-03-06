# -*- encoding : utf-8 -*-
module Vfs
  class UniversalEntry < Entry
    # Attributes.

    def exist?
      !!get
    end

    def copy_to to, options = {}
      from = file? ? to_file : to_dir
      from.copy_to to, options
    end

    # CRUD.

    def delete
      delete_entry
    end
  end
end
