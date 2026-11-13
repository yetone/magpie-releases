cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3981"
  sha256 arm:   "ddc92dbc7ae9250564cda6f0b9b9fb4ae8c813e5e5c3473e864cc81586d5c291",
         intel: "90b34c62ec50da8e41859a52e2e768cfb97043c9c15dd94771e66721451674c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
