# -*- encoding: utf-8 -*-
# stub: active_model_serializers 0.10.0.rc3 ruby lib

Gem::Specification.new do |s|
  s.name = "active_model_serializers"
  s.version = "0.10.0.rc3"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Steve Klabnik"]
  s.date = "2017-02-08"
  s.description = "ActiveModel::Serializers allows you to generate your JSON in an object-oriented and convention-driven manner."
  s.email = ["steve@steveklabnik.com"]
  s.files = [".gitignore", ".rubocop.yml", ".rubocop_todo.yml", ".simplecov", ".travis.yml", "CHANGELOG.md", "CONTRIBUTING.md", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "active_model_serializers.gemspec", "appveyor.yml", "docs/ARCHITECTURE.md", "docs/DESIGN.textile", "docs/README.md", "docs/general/adapters.md", "docs/general/caching.md", "docs/general/configuration_options.md", "docs/general/getting_started.md", "docs/general/instrumentation.md", "docs/general/logging.md", "docs/general/rendering.md", "docs/general/serializers.md", "docs/how-open-source-maintained.jpg", "docs/howto/add_pagination_links.md", "docs/howto/add_root_key.md", "docs/howto/outside_controller_use.md", "docs/integrations/ember-and-json-api.md", "docs/integrations/grape.md", "docs/jsonapi/schema.md", "docs/jsonapi/schema/schema.json", "lib/action_controller/serialization.rb", "lib/active_model/serializable_resource.rb", "lib/active_model/serializer.rb", "lib/active_model/serializer/adapter.rb", "lib/active_model/serializer/adapter/attributes.rb", "lib/active_model/serializer/adapter/base.rb", "lib/active_model/serializer/adapter/cached_serializer.rb", "lib/active_model/serializer/adapter/fragment_cache.rb", "lib/active_model/serializer/adapter/json.rb", "lib/active_model/serializer/adapter/json/fragment_cache.rb", "lib/active_model/serializer/adapter/json_api.rb", "lib/active_model/serializer/adapter/json_api/fragment_cache.rb", "lib/active_model/serializer/adapter/json_api/link.rb", "lib/active_model/serializer/adapter/json_api/pagination_links.rb", "lib/active_model/serializer/adapter/null.rb", "lib/active_model/serializer/array_serializer.rb", "lib/active_model/serializer/association.rb", "lib/active_model/serializer/associations.rb", "lib/active_model/serializer/attribute.rb", "lib/active_model/serializer/attributes.rb", "lib/active_model/serializer/belongs_to_reflection.rb", "lib/active_model/serializer/caching.rb", "lib/active_model/serializer/collection_reflection.rb", "lib/active_model/serializer/collection_serializer.rb", "lib/active_model/serializer/configuration.rb", "lib/active_model/serializer/fieldset.rb", "lib/active_model/serializer/has_many_reflection.rb", "lib/active_model/serializer/has_one_reflection.rb", "lib/active_model/serializer/include_tree.rb", "lib/active_model/serializer/lint.rb", "lib/active_model/serializer/railtie.rb", "lib/active_model/serializer/reflection.rb", "lib/active_model/serializer/singular_reflection.rb", "lib/active_model/serializer/version.rb", "lib/active_model_serializers.rb", "lib/active_model_serializers/callbacks.rb", "lib/active_model_serializers/logging.rb", "lib/active_model_serializers/model.rb", "lib/active_model_serializers/serialization_context.rb", "lib/generators/serializer/USAGE", "lib/generators/serializer/resource_override.rb", "lib/generators/serializer/serializer_generator.rb", "lib/generators/serializer/templates/serializer.rb.erb", "lib/grape/active_model_serializers.rb", "lib/grape/formatters/active_model_serializers.rb", "lib/grape/helpers/active_model_serializers.rb", "test/action_controller/adapter_selector_test.rb", "test/action_controller/explicit_serializer_test.rb", "test/action_controller/json/include_test.rb", "test/action_controller/json_api/linked_test.rb", "test/action_controller/json_api/pagination_test.rb", "test/action_controller/serialization_scope_name_test.rb", "test/action_controller/serialization_test.rb", "test/active_model_serializers/logging_test.rb", "test/active_model_serializers/model_test.rb", "test/active_model_serializers/serialization_context_test.rb", "test/active_record_test.rb", "test/adapter/fragment_cache_test.rb", "test/adapter/json/belongs_to_test.rb", "test/adapter/json/collection_test.rb", "test/adapter/json/has_many_test.rb", "test/adapter/json_api/belongs_to_test.rb", "test/adapter/json_api/collection_test.rb", "test/adapter/json_api/fields_test.rb", "test/adapter/json_api/has_many_embed_ids_test.rb", "test/adapter/json_api/has_many_explicit_serializer_test.rb", "test/adapter/json_api/has_many_test.rb", "test/adapter/json_api/has_one_test.rb", "test/adapter/json_api/json_api_test.rb", "test/adapter/json_api/linked_test.rb", "test/adapter/json_api/links_test.rb", "test/adapter/json_api/pagination_links_test.rb", "test/adapter/json_api/resource_type_config_test.rb", "test/adapter/json_api/toplevel_jsonapi_test.rb", "test/adapter/json_test.rb", "test/adapter/null_test.rb", "test/adapter_test.rb", "test/array_serializer_test.rb", "test/capture_warnings.rb", "test/collection_serializer_test.rb", "test/fixtures/active_record.rb", "test/fixtures/poro.rb", "test/generators/scaffold_controller_generator_test.rb", "test/generators/serializer_generator_test.rb", "test/grape_test.rb", "test/include_tree/from_include_args_test.rb", "test/include_tree/from_string_test.rb", "test/include_tree/include_args_to_hash_test.rb", "test/lint_test.rb", "test/logger_test.rb", "test/poro_test.rb", "test/serializable_resource_test.rb", "test/serializers/adapter_for_test.rb", "test/serializers/association_macros_test.rb", "test/serializers/associations_test.rb", "test/serializers/attribute_test.rb", "test/serializers/attributes_test.rb", "test/serializers/cache_test.rb", "test/serializers/configuration_test.rb", "test/serializers/fieldset_test.rb", "test/serializers/meta_test.rb", "test/serializers/options_test.rb", "test/serializers/root_test.rb", "test/serializers/serializer_for_test.rb", "test/support/rails5_shims.rb", "test/support/rails_app.rb", "test/support/serialization_testing.rb", "test/support/simplecov.rb", "test/support/stream_capture.rb", "test/support/test_case.rb", "test/test_helper.rb"]
  s.homepage = "https://github.com/rails-api/active_model_serializers"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Conventions-based JSON generation for Rails."
  s.test_files = ["test/action_controller/adapter_selector_test.rb", "test/action_controller/explicit_serializer_test.rb", "test/action_controller/json/include_test.rb", "test/action_controller/json_api/linked_test.rb", "test/action_controller/json_api/pagination_test.rb", "test/action_controller/serialization_scope_name_test.rb", "test/action_controller/serialization_test.rb", "test/active_model_serializers/logging_test.rb", "test/active_model_serializers/model_test.rb", "test/active_model_serializers/serialization_context_test.rb", "test/active_record_test.rb", "test/adapter/fragment_cache_test.rb", "test/adapter/json/belongs_to_test.rb", "test/adapter/json/collection_test.rb", "test/adapter/json/has_many_test.rb", "test/adapter/json_api/belongs_to_test.rb", "test/adapter/json_api/collection_test.rb", "test/adapter/json_api/fields_test.rb", "test/adapter/json_api/has_many_embed_ids_test.rb", "test/adapter/json_api/has_many_explicit_serializer_test.rb", "test/adapter/json_api/has_many_test.rb", "test/adapter/json_api/has_one_test.rb", "test/adapter/json_api/json_api_test.rb", "test/adapter/json_api/linked_test.rb", "test/adapter/json_api/links_test.rb", "test/adapter/json_api/pagination_links_test.rb", "test/adapter/json_api/resource_type_config_test.rb", "test/adapter/json_api/toplevel_jsonapi_test.rb", "test/adapter/json_test.rb", "test/adapter/null_test.rb", "test/adapter_test.rb", "test/array_serializer_test.rb", "test/capture_warnings.rb", "test/collection_serializer_test.rb", "test/fixtures/active_record.rb", "test/fixtures/poro.rb", "test/generators/scaffold_controller_generator_test.rb", "test/generators/serializer_generator_test.rb", "test/grape_test.rb", "test/include_tree/from_include_args_test.rb", "test/include_tree/from_string_test.rb", "test/include_tree/include_args_to_hash_test.rb", "test/lint_test.rb", "test/logger_test.rb", "test/poro_test.rb", "test/serializable_resource_test.rb", "test/serializers/adapter_for_test.rb", "test/serializers/association_macros_test.rb", "test/serializers/associations_test.rb", "test/serializers/attribute_test.rb", "test/serializers/attributes_test.rb", "test/serializers/cache_test.rb", "test/serializers/configuration_test.rb", "test/serializers/fieldset_test.rb", "test/serializers/meta_test.rb", "test/serializers/options_test.rb", "test/serializers/root_test.rb", "test/serializers/serializer_for_test.rb", "test/support/rails5_shims.rb", "test/support/rails_app.rb", "test/support/serialization_testing.rb", "test/support/simplecov.rb", "test/support/stream_capture.rb", "test/support/test_case.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activemodel>, [">= 4.0"])
      s.add_runtime_dependency(%q<actionpack>, [">= 4.0"])
      s.add_runtime_dependency(%q<railties>, [">= 4.0"])
      s.add_development_dependency(%q<activerecord>, [">= 4.0"])
      s.add_development_dependency(%q<kaminari>, ["~> 0.16.3"])
      s.add_development_dependency(%q<will_paginate>, [">= 3.0.7", "~> 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<timecop>, ["~> 0.7"])
      s.add_development_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_development_dependency(%q<grape>, ["< 1.0", ">= 0.13"])
    else
      s.add_dependency(%q<activemodel>, [">= 4.0"])
      s.add_dependency(%q<actionpack>, [">= 4.0"])
      s.add_dependency(%q<railties>, [">= 4.0"])
      s.add_dependency(%q<activerecord>, [">= 4.0"])
      s.add_dependency(%q<kaminari>, ["~> 0.16.3"])
      s.add_dependency(%q<will_paginate>, [">= 3.0.7", "~> 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<timecop>, ["~> 0.7"])
      s.add_dependency(%q<minitest-reporters>, [">= 0"])
      s.add_dependency(%q<grape>, ["< 1.0", ">= 0.13"])
    end
  else
    s.add_dependency(%q<activemodel>, [">= 4.0"])
    s.add_dependency(%q<actionpack>, [">= 4.0"])
    s.add_dependency(%q<railties>, [">= 4.0"])
    s.add_dependency(%q<activerecord>, [">= 4.0"])
    s.add_dependency(%q<kaminari>, ["~> 0.16.3"])
    s.add_dependency(%q<will_paginate>, [">= 3.0.7", "~> 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<timecop>, ["~> 0.7"])
    s.add_dependency(%q<minitest-reporters>, [">= 0"])
    s.add_dependency(%q<grape>, ["< 1.0", ">= 0.13"])
  end
end
