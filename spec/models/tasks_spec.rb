require "rails_helper"

describe Task do
  context 'Create Task' do

    it 'name must present' do
      task = Task.create(name: '')
      expect(task.errors.count).to eq(1)
    end

    it 'description could be empty' do
      task = Task.create(name: 'foo')
      expect(task.errors.count).to eq(0)
    end

    it 'initial status is not completed' do
      task = Task.create(name: 'foo')
      expect(task.completed).to eq(false)
    end
  end
end