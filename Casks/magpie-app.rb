cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3266"
  sha256 arm:   "6d4dd1a3d4135173209490afc62e701a2c04ddd52bdbacdb5c7e7742bf6f454f",
         intel: "b9f65c468740b5a1e3199b5f48e4e850c6e8b9cf09bd9056a470d2f459b24171"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
