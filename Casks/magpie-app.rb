cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3891"
  sha256 arm:   "daeead2612aff876900fb389bbe44770616268d42d7b4c13e77d423023df4462",
         intel: "5f736e4333d30d670e1cbd11e86a08bb5a6d8e0f27d31bb1d77069953307c6e7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
