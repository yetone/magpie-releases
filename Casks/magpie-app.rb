cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.969"
  sha256 arm:   "6d406dc3f65a369a8632aa6437e270beb0fbe58e9d844c5a6fcb0b5d4b91cfda",
         intel: "c4178966b0990fe8822818bb9fdc68e1a4e57e50e7a3ad97e374cf182a59e2cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
