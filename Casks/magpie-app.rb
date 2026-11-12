cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3955"
  sha256 arm:   "a1fdfc76251cb4f10f4fe87a30c3475dbeef01f292324ff9b70af80c1f5a3667",
         intel: "bd36b39cc2bd1f8a11a52331939abcf5334498c7fafdb4862dda13ffa77a2435"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
