cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2571"
  sha256 arm:   "762c506d38c79a2d1a96d566aace2358c48cac0be9dae8559b2f4fe11d1180fa",
         intel: "56f6e46912e1c10ef74194cea62c7716a31c4ffddddb92c37d5f8868d4305ff5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
