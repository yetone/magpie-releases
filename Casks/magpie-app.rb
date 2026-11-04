cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2971"
  sha256 arm:   "e256ac11f729705b93feb3fd3181ee609b9d8ac4c091d8b32630c24cfacd97d2",
         intel: "af301b9f50d0b4f7a36c4e90593e7084e7264f5360a4c657db2aaddacd009e71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
