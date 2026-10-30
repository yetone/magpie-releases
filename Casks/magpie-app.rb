cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2202"
  sha256 arm:   "c42163147b1d68106013a9f002819e10b197f9be229e9aa9008eeabafc5189a7",
         intel: "8915270ff273750147540e2663cf4e229be7f7522e151845c3f128f3bb53c499"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
