cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3787"
  sha256 arm:   "f8bfc75b4127386f83fd63536ce0d6dc51402500e7ae85229cb4b84d40d28d56",
         intel: "44f4872d31a5f79c6920457d8187eabb8f32ae73761f42e97b61962128d284fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
