cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4202"
  sha256 arm:   "7cef97b2d30768afbc63193a1d79b16e2be5f506310fbd60e95dcaf511a04cde",
         intel: "b3891eccb74c1e2ae9f4393772edd7d49d50be2a8cada3c0f7caac4a2c1c11bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
