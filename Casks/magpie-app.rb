cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3915"
  sha256 arm:   "9507c599e4055340c10a6f99fba5bc62ecc0285985412ae27478bf0a3a888fcd",
         intel: "133490c1b35cd6331d55da1283215c46de162741af20b938e89afb432d29b2cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
