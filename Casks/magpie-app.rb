cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4763"
  sha256 arm:   "c11f57fb220f82faba0d1e3db8441f448d7d47accdc52aa021ea8ddd3dd3241c",
         intel: "fe8ae5259a6dc8b49a59e4553c0dcb3a659466927801c3ce702b7ab67c8e1ed2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
