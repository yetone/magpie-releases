cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2119"
  sha256 arm:   "f041dc0d93100661043a2ac1d55e02a066c4246b32b4073136577aa22d068b17",
         intel: "8ad993c97b3141c1fb6e84510f05adad0cebfb6a85dae617cbbdec43a6563f8f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
