cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3304"
  sha256 arm:   "14e92086e3aa1adb7e8dff829da5127006506d625c100ec1dd2e7444d4c611ce",
         intel: "3e17650de98b1045ce58897b448d2e61bff3ed2d3b633859a1432b43dee75a0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
