cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4426"
  sha256 arm:   "fa866fad144c8589653f335beb827f4c4a9af4bb9d31962bdb3b04f56868a2b4",
         intel: "9afd5fc12057526e7e9290db91d79f3f083e6f87b53171630a5f3ef3b21f6263"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
