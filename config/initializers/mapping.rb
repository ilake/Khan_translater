DEFAULT_MAPPING_CONFIG = HashWithIndifferentAccess.new(YAML.load_file("#{Rails.root.to_s}/config/default_mapping.yml"))
