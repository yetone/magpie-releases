cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4734"
  sha256 arm:   "6aa26aa52869fe343c7e7712db679b5632e05465ccf5bdb64fa0f72ca9e32c68",
         intel: "dd5ef28da66de188e2278c176a28e99168d929c5c01e446d58824b95769ae483"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
