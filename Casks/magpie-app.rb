cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4393"
  sha256 arm:   "b9a49c45f31186e0cf15f823b8e264a306ef7dc2d1e7cd7d9bdbd6a710ac1f2c",
         intel: "94bd3b9006f0edceec57df3a29bdbf82b7631819cc13513d1725c74f2094339d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
