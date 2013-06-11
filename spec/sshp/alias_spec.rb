require "spec_helper"

describe SSHP::Alias do
  let(:filename) { File.expand_path(File.join(File.dirname(__FILE__), %w[.. fixtures sshp])) }
  let(:name)     { "ubuntu" }
  let(:args)     { "-i ~/dev/keys/production_new.pem -l ubuntu" }

  before do
    described_class.stub filename: filename
  end

  after do
    File.delete filename
  end

  describe "#self.create_or_update_by_name" do
    context "create" do
      it "should create a new entry" do
        described_class.create_or_update_by_name name, args
        expect(described_class.all).to eq ({ name => args })
      end
    end

    context "update" do
      it "should update an existing alias" do
        described_class.create_or_update_by_name name, args
        described_class.create_or_update_by_name name, "test"
        expect(described_class.all).to eq ({ name => "test" })
      end
    end
  end
end

