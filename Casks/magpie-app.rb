cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3844"
  sha256 arm:   "c4cd36be7e60918e50e1b9bccb958e248f573b5a759b1d7b17b5f23f8e953822",
         intel: "17134a9d8d641b71500a0b4cc7beb1765ef1d9d59073afd1d1fe0a564af613d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
