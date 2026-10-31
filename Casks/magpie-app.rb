cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2320"
  sha256 arm:   "746bc5adbb5570eb6c0287383c28ec3abc753ae4bd645a4a0578739e1f993801",
         intel: "754063e341116e2506d4e10d4f1de122b6da1fe06ad7eb41608fa52852ac8afa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
