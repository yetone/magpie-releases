cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4929"
  sha256 arm:   "a54c4e15823019c79d9530f313a9461a7fa38b6587ca584c0b924f50af66cb1d",
         intel: "22a503b95a8f58fe8315aa5d60e66c70207ac86c2049158c5cf42bf9d7685549"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
