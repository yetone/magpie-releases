cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2589"
  sha256 arm:   "3fc08706018f6b3285ae3708404bfd240d2c9f70bf369095bb87872f8a3a4c3b",
         intel: "ec3c048e26ea60ea62fb877221f675a0570eb446ca255efb5b44940548d971da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
