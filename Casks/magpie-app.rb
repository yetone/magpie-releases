cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2081"
  sha256 arm:   "f6f85fc619d569e7e80c4f123208cdb914e953b8e3fc36b52d1f01604f9a9c63",
         intel: "59a7302568c08169f139ffdd661ebafe5ff48e9b2f6e0b2b8b20c1c04451e10b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
