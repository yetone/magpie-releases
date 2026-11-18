cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4477"
  sha256 arm:   "014c33dfe86aa1e0700765371bf0c5c8797f73ecf40d3b783f09cd5e44a2d418",
         intel: "4a563849d11cd39193f4a98c8ae6eb9f2ce689e677a4c620bc6ed0c3cddfc6a8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
