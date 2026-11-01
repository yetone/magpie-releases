cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2637"
  sha256 arm:   "1f42e69f7d3888fb073fb0fb921a05990819a37d202cf3b09284133a465e3043",
         intel: "41559e1722abf0e1418d6be78afcee14cba51d861addd4842d7865dcb63aff4a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
