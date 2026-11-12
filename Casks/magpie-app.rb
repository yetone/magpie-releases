cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3849"
  sha256 arm:   "e189a64bea1b9b30e4325d5c688b776168456f0d7317e59c05ac56ec76ab8843",
         intel: "d11bd85a3c6e52bd9e717cadfbeac1fd8159ecc09304f74b0c7dc78e970e0343"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
