cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3245"
  sha256 arm:   "bf9e1f16fcf9375bc47b8526262fab96350f70f939b82d19cb736ab5bfd73817",
         intel: "04e538b4baeef19213a7b807f39f65a77c3b9defe35d8ffb46b84cc2aa40ee9c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
