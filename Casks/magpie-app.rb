cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4122"
  sha256 arm:   "5f229a60736749e15cc600ef312706c4d3bed6a961d21b80beb3fe071001f9db",
         intel: "3ab14f8924019d8fc59de943f0ced34ad221ae0ccef2e6b4fd0f6abe70dd7c1b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
