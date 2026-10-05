cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1028"
  sha256 arm:   "fe605eec6d5b5ad9274e5fa3435dffda45959eccce1a84cf18553a2920629603",
         intel: "a24ab4676050ae5bc37b0b48a16e132797f8a4924184bd45ca87d9e28ad3c42c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
