cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4654"
  sha256 arm:   "1448e7219e43008b25b03440063fa76280d6a60ef1ab1d8a2fb9e839a719ca53",
         intel: "0ec0d8ecddcfc8510c5c46d408dc80d8e271eee42691eedc20693c18c40f479e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
