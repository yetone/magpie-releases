cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2527"
  sha256 arm:   "32e29b4c42a54b6606723f636278b5fe837dde0126fec74790a9d3059b9e0689",
         intel: "944f818f1995233f01f82ddec87e99f5db4d93cfe0a429f48f7cca28925b866c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
