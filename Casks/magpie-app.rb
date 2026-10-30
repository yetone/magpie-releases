cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2164"
  sha256 arm:   "bc41ec64078ede003713e190dcaa789ff4c849d8a8ba6a6feee66760b7d24261",
         intel: "42e6a095e1d93dcd268a224394b79d4fba7ce8c36b6111ecad5b98d802dcba03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
