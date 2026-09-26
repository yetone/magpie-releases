cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.126"
  sha256 arm:   "54e0f9dd563176437dd8e19ae88a1854b56e51b66fc3f1a587b7c53934970498",
         intel: "c0e5a37a1276944c3ed7702e5e936976d0f06d118bf981c0cd289166e4346b2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
