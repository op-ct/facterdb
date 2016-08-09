require 'spec_helper'

describe 'FacterDB' do

  describe '#get_os_facts' do
    context 'without parameters' do
      subject { FacterDB.get_os_facts() }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'without parameters' do
      subject { FacterDB.get_os_facts() }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with an Array filter' do
      subject { FacterDB.get_os_facts('*', [{:osfamily => 'Debian'}]) }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with a Hash filter' do
      subject { FacterDB.get_os_facts('*', {:osfamily => 'Debian'}) }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with a String filter' do
      subject { FacterDB.get_os_facts('*', 'osfamily=Debian') }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end
  end

  describe '#get_facts' do
    context 'without parameters' do
      subject { FacterDB.get_facts() }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with an Array filter' do
      subject { FacterDB.get_facts([{:osfamily => 'Debian'}]) }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with a Hash filter' do
      subject { FacterDB.get_facts({:osfamily => 'Debian'}) }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with a String filter' do
      subject { FacterDB.get_facts('osfamily=Debian') }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end

    context 'with a Windows filter' do
      subject { FacterDB.get_facts({:osfamily => 'windows'}) }
      it "Should return an array of hashes with at least 1 element" do
        expect(subject.class).to eq Array
        expect(subject.size).not_to eq(0)
        expect(subject.select { |facts| facts.class != Hash }.size).to eq(0)
      end
    end
  end
end
