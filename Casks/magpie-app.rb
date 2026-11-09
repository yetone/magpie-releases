cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3361"
  sha256 arm:   "dd49f91e271854fd6f4bee3a3e79fe06b4d1a70432e892bad353deb579cf8ff2",
         intel: "3893bf40f5f1f0a81d9219a1bc8ee77a27b08b37828e0d5e3f45946c56d0999c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
