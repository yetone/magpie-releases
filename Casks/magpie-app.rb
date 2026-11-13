cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4067"
  sha256 arm:   "924c8f74649e888a8370876db0b73bd8071fda55ed3865008f2abba96d242b47",
         intel: "fa82dce5ac33a79bc2fb4aad61ccfc464238a14a19ded62a97404afc8c21a00f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
