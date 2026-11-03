cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2820"
  sha256 arm:   "da51aef987656e3ff296f72afd2489d9ca1f33ac221e2decb4cc2fa8190c2ba8",
         intel: "5c99c53743e6acf3a889e59689e58ed4829d9d92ea1571a36b1beb9250fab19f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
