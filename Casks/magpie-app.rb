cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.926"
  sha256 arm:   "99623b3eb19243d1d0d22cebf7f8e725630ff297d2f5cd8b2a71a2685e9abfd8",
         intel: "2142624259f7eb0986c2b16f0bcd7ccd603d1d65b5d9be2b2a8535ddad4d1e44"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
