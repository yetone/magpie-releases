cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2398"
  sha256 arm:   "9c3c1991609268674d354dfa19d8e847dc7e5f26625fcf5cfc4ace1b8f6e27f7",
         intel: "582e3968d0911785cc36e0dcce054991559dca83356463af345ce15c362c1a17"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
