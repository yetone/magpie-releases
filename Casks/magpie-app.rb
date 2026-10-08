cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1110"
  sha256 arm:   "8b2a465a4f9ebcbd9347fcb8fca17b455b157965c56d11bab3cf162d6a1829f3",
         intel: "0b075460a00257594b54bbe7d62d2ade77724b23afe861bb5e052418489e32be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
