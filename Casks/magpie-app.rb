cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1937"
  sha256 arm:   "077cac0b50d8c6646600f89e1527e2669a7f9589268e1874fc7128c8c62e875a",
         intel: "1551cdef07538627d2444c07f8f4faf3f833ed5b4a781e1209a5ca5690f6dcd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
