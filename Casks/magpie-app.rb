cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4571"
  sha256 arm:   "54effc8363383ee3c44a32003d7ecf98e878e4ba8c10bcfb841174ac383f3f76",
         intel: "3f169309ca82fe2335606ec16a854d22396036589c02dc0ca14982f6d60ed998"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
