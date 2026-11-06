cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3194"
  sha256 arm:   "a87509c0a6bc1bacb41b0f8bc5fd2cc7030f98c72057e9686e00cbcc36d7186b",
         intel: "963934ba3b211c21c09116a6fcfaab9ce281780404fef69347963fe32937be71"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
