cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2379"
  sha256 arm:   "438287ef214955a354ec1fcedae3503f48eb697c32be0f271f809774f8592311",
         intel: "a52a13dd2eefc8dda5e3e09d63f79475968de0809e25845d7f4f800ddceb80f5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
