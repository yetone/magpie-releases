cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2978"
  sha256 arm:   "33c526196c65aeb633be787c95042bda644dca869b38770ac4790ee8739bbfec",
         intel: "5fb0451730994493046947d55505bf17e144479cd84653467914138e446b1855"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
